package com.lolez.service;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.lolez.Matchdto.MatchDto;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.dao.MatchDao;

@Service
public class MatchService {

	@Autowired
	private MatchDao mdao;

	public ArrayList<MatchDto> matchserch(SummonerDto sresult, String apiKey) throws Exception {
		System.out.println("MatchService matchserch() 실행");
		
		ArrayList<MatchDto> matches = new ArrayList<MatchDto>();
		
		CloseableHttpClient httpClient = HttpClients.createDefault();

		String url = "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/" + sresult.getPuuid()
				+ "/ids?start=0&count=20";

		HttpGet request = new HttpGet(url);

		request.addHeader("X-Riot-Token", apiKey);

		CloseableHttpResponse response = httpClient.execute(request);

		String responseJson = EntityUtils.toString(response.getEntity());

		Gson gson = new Gson();

		Type listType = new TypeToken<List<String>>() {
		}.getType();
		List<String> matchIdList = gson.fromJson(responseJson, listType);

		if (matchIdList == null) {
			System.out.println("대전 기록이 존재하지 않습니다.");
			return null;

		} else {

			
			
			
			String matchId = null; 
			for (String fm : matchIdList) {
				
				matchId =  mdao.selectmatchId(fm);
				
				if(!(fm.equals(matchId))) {
					
				
				httpClient = HttpClients.createDefault();

				url = "https://asia.api.riotgames.com/lol/match/v5/matches/" + fm;

				request = new HttpGet(url);

				request.addHeader("X-Riot-Token", apiKey);

				response = httpClient.execute(request);

				responseJson = EntityUtils.toString(response.getEntity());

				gson = new Gson();

				MatchDto match = gson.fromJson(responseJson, MatchDto.class);
				matches.add(match);
				}else {
					System.out.println("이미 등록된 Match 입니다 : " + fm);
				}
			}

			System.out.println("MatchDto");
			
			
			// matches에 값이 있을경우 matches에 기본 데이터가 들어왔는지 확인
			for (MatchDto vl : matches) {
				
				if (vl.getMetadata() != null && vl.getInfo() != null) {
					System.out.println("게임 정보 불러오기 성공 : " + vl.getMetadata().getMatchId());
					System.out.println("\nDB에 Metadata Insert 실행");
					String combined = String.join(",", vl.getMetadata().getParticipants());
					vl.getMetadata().setParticipants_String(combined);
					int MTir = mdao.insertmetadata(vl.getMetadata());
					
					// Metadata DB Insert 처리 여부
					if(MTir == 1){
						System.out.println("Metadata DB Insert 성공");
						System.out.println("\nDB에 Info Insert 실행");
						int IFir = mdao.insertinfo(vl.getInfo());
						
						// Info DB Insert 처리 여부
						if(IFir == 1){
							System.out.println("Info DB Insert 성공");
							System.out.println("\nDB에 ParticipantDto Insert 실행");
							
							// Metadata에 있는 puuid들을 다시 list화
							List<String> list = new ArrayList<>(Arrays.asList(vl.getMetadata().getParticipants_String().split(",")));
							
							// 각 Userpuuid에 맞게 반복하여 set 설정
							// 모든 Participants 배열에 Gameid set 설정
							int PTir = 0;
							for(int i = 0; i < vl.getInfo().getParticipants().size(); i++) {
								vl.getInfo().getParticipants().get(i).setFirstBloodAssist_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isFirstBloodAssist()));
								vl.getInfo().getParticipants().get(i).setFirstBloodKill_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isFirstBloodKill()));
								vl.getInfo().getParticipants().get(i).setFirstTowerAssist_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isFirstTowerAssist()));
								vl.getInfo().getParticipants().get(i).setFirstTowerKill_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isFirstTowerKill()));
								vl.getInfo().getParticipants().get(i).setGameEndedInEarlySurrender_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isGameEndedInEarlySurrender()));
								vl.getInfo().getParticipants().get(i).setGameEndedInSurrender_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isGameEndedInSurrender()));
								vl.getInfo().getParticipants().get(i).setTeamEarlySurrendered_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isWin()));
								vl.getInfo().getParticipants().get(i).setWin_int(vl.getInfo().getParticipants().get(i).convertBooleanToInt(vl.getInfo().getParticipants().get(i).isFirstBloodAssist()));
								vl.getInfo().getParticipants().get(i).setUserpuuid(list.get(i));
								vl.getInfo().getParticipants().get(i).setGameid(vl.getInfo().getGameId());
								PTir = mdao.insertparticipant(vl.getInfo().getParticipants().get(i));
								if(PTir == 0) {
									System.out.println("Participant DB Insert 실패");
									break;
								}
							}
							System.out.println("Participant DB Insert 성공");
							
						}else {
							System.out.println("Info DB Insert 실패");
							return null;
						}
						
					}else {
						System.out.println("\nMetadata DB Insert 실패");
						return null;
					}
					
				} else {
					System.out.println("게임 상세내용 불러오기 실패 : " + vl.getMetadata().getMatchId());
				}
			}

		}

		return matches;
	}

}
