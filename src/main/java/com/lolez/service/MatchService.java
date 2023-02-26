package com.lolez.service;

import java.lang.reflect.Type;
import java.util.ArrayList;
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

	public ArrayList<MatchDto> matchserch(SummonerDto sresult, String apiKey, int j) throws Exception {
		System.out.println("MatchService matchserch() 실행");
		int v = j * 5;
		ArrayList<MatchDto> matches = new ArrayList<MatchDto>();

		CloseableHttpClient httpClient = HttpClients.createDefault();

		String url = "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/" + sresult.getPuuid()
				+ "/ids?start="+(v-5)+"&count="+v;

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
			System.out.println("대전 기록이 존재합니다.");
			
			String matchId = null;
			for (String fm : matchIdList) {

				matchId = mdao.selectmatchId(fm);

				if (!(fm.equals(matchId))) {

					httpClient = HttpClients.createDefault();

					url = "https://asia.api.riotgames.com/lol/match/v5/matches/" + fm;

					request = new HttpGet(url);

					request.addHeader("X-Riot-Token", apiKey);

					response = httpClient.execute(request);

					responseJson = EntityUtils.toString(response.getEntity());

					gson = new Gson();

					MatchDto match = gson.fromJson(responseJson, MatchDto.class);
					if (match.getMetadata() != null && match.getInfo() != null) {
						System.out.println("게임 정보 불러오기 성공 : " + match.getMetadata().getMatchId());
						/*
						 * System.out.println("\nDB에 Metadata Insert 실행"); String combined =
						 * String.join(",", match.getMetadata().getParticipants());
						 * match.getMetadata().setParticipants_String(combined); int Perki = 0; int MTir
						 * = mdao.insertmetadata(match.getMetadata());
						 * 
						 * // Metadata DB Insert 처리 여부 if (MTir == 1) {
						 * System.out.println("Metadata DB Insert 성공");
						 * System.out.println("\nDB에 Info Insert 실행"); int IFir =
						 * mdao.insertinfo(match.getInfo());
						 * 
						 * // Info DB Insert 처리 여부 if (IFir == 1) {
						 * System.out.println("Info DB Insert 성공");
						 * 
						 * // Metadata에 있는 puuid들을 다시 list화 List<String> list = new ArrayList<>(
						 * Arrays.asList(match.getMetadata().getParticipants_String().split(",")));
						 * 
						 * // TeamDto 배열에 GameId set 설정 for (int i = 0; i <
						 * match.getInfo().getTeams().size(); i++) {
						 * match.getInfo().getTeams().get(i).setGameId(match.getInfo().getGameId());
						 * 
						 * System.out.println("\nDB에 TeamDto Insert 실행"); int TMir =
						 * mdao.insertteam(match.getInfo().getTeams().get(i));
						 * 
						 * if (TMir == 0) { System.out.println("Team DB Insert 실패"); return null;
						 * 
						 * } else { System.out.println("Team DB Insert 성공");
						 * 
						 * ObjectivesDto ol = match.getInfo().getTeams().get(i).getObjectives();
						 * 
						 * // ObjectiveDto type set설정 ol.getBaron().setType("baron");
						 * ol.getChampion().setType("champion"); ol.getDragon().setType("dragon");
						 * ol.getInhibitor().setType("inhibitor");
						 * ol.getRiftHerald().setType("riftHerald"); ol.getTower().setType("tower");
						 * 
						 * ObjectiveDto[] objectives = { ol.getBaron(), ol.getChampion(),
						 * ol.getDragon(), ol.getInhibitor(), ol.getRiftHerald(), ol.getTower() };
						 * 
						 * for (ObjectiveDto objective : objectives) { // ObjectivesDto에 GameId set설정
						 * objective.setGameId(match.getInfo().getGameId());
						 * 
						 * // ObjectivesDto teamId set설정
						 * objective.setTeamId(match.getInfo().getTeams().get(i).getTeamId());
						 * 
						 * System.out.println("\nDB에 ObjectivesDto Insert 실행"); int OBir =
						 * mdao.insertObjective(objective);
						 * 
						 * if (OBir == 0) { System.out.println("Objective DB Insert 실패"); return null;
						 * 
						 * } }
						 * 
						 * System.out.println("Objective DB Insert 성공");
						 * System.out.println("\nDB에 BanDto Insert 실행");
						 * 
						 * 
						 * for (int a = 0; a < match.getInfo().getTeams().get(i).getBans().size(); a++)
						 * { BanDto bl = match.getInfo().getTeams().get(i).getBans().get(a);
						 * 
						 * // BanDto에 GameId set설정 bl.setGameId(match.getInfo().getGameId());
						 * 
						 * // BanDto teamId set설정
						 * bl.setTeamId(match.getInfo().getTeams().get(i).getTeamId());
						 * 
						 * // BanDto PuuId set설정 bl.setPuuid(list.get(a));;
						 * 
						 * int BANir = mdao.insertban(bl);
						 * 
						 * if (BANir == 0) { System.out.println("Ban DB Insert 실패"); return null;
						 * 
						 * } System.out.println("Ban DB Insert 성공");
						 * 
						 * }
						 * 
						 * } }
						 * 
						 * System.out.println("\nDB에 ParticipantDto Insert 실행"); // 각 Userpuuid에 맞게 반복하여
						 * set 설정 // Participants 배열에 GameId set 설정 for (int i = 0; i <
						 * match.getInfo().getParticipants().size(); i++) { ParticipantDto pl =
						 * match.getInfo().getParticipants().get(i); pl.setPuuid(list.get(i));
						 * pl.setGameid(match.getInfo().getGameId()); int PTir =
						 * mdao.insertparticipant(pl); if (PTir == 0) {
						 * System.out.println("Participant DB Insert 실패"); return null; } else {
						 * System.out.println("Participant DB Insert 성공");
						 * System.out.println("\nDB에 PerkStats Insert 실행");
						 * 
						 * PerkStatsDto psl = pl.getPerks().getStatPerks();
						 * 
						 * // PerkStatsDto에 GameId set설정 psl.setGameId(match.getInfo().getGameId());
						 * 
						 * // PerkStatsDto perk_style_id에 puuid set설정 psl.setPuuid(list.get(i)); int
						 * PSTir = mdao.insertstatperks(psl);
						 * 
						 * if (PSTir == 1) { System.out.println("PerkStats DB Insert 성공");
						 * System.out.println("\nDB에 PerkStyle Insert 실행");
						 * 
						 * for (int a = 0; a < pl.getPerks().getStyles().size(); a++) {
						 * 
						 * PerkStyleDto pyl = pl.getPerks().getStyles().get(a);
						 * 
						 * // PerkStyleDto에 GameId set설정 pyl.setGameId(match.getInfo().getGameId());
						 * 
						 * // PerkStyleDto perk_style_id에 puuid set설정 pyl.setPuuid(list.get(i));
						 * 
						 * int PSYir = mdao.insertperkstyle(pyl);
						 * 
						 * if (PSYir == 1) { System.out.println("PerkStyle DB Insert 성공");
						 * 
						 * for (int b = 0; b < pyl.getSelections().size(); b++) {
						 * System.out.println("\nDB에 PerkStyleSelectionDto Insert 실행");
						 * 
						 * // PerkStyleSelectionDto에 GameId set설정
						 * pyl.getSelections().get(b).setGameId(pyl.getGameId());
						 * 
						 * // PerkStyleSelectionDto에 Puuid set설정
						 * pyl.getSelections().get(b).setPuuid(pyl.getPuuid());
						 * 
						 * // PerkStyleSelectionDto에 Description set설정
						 * pyl.getSelections().get(b).setDescription(pyl.getDescription());
						 * 
						 * int PSLir = mdao.insertperkstyleselect(pyl.getSelections().get(b));
						 * 
						 * if (PSLir == 0) { System.out.println("PerkStyleSelection DB Insert 실패");
						 * return null;
						 * 
						 * } System.out.println("PerkStyleSelection DB Insert 성공"); }
						 * 
						 * } else { System.out.println("PerkStyle DB Insert 실패"); return null;
						 * 
						 * } }
						 * 
						 * } else { System.out.println("PerkStats DB Insert 실패"); return null;
						 * 
						 * } } }
						 * 
						 * } else { System.out.println("Info DB Insert 실패"); return null; }
						 * 
						 * } else { System.out.println("Metadata DB Insert 실패"); return null; }
						 */

					} else {
						System.out.println("게임 상세내용 불러오기 실패 : " + match.getMetadata().getMatchId());
					}
					matches.add(match);
				} else {
					System.out.println("이미 등록된 Match 입니다 : " + fm);
					
					httpClient = HttpClients.createDefault();

					url = "https://asia.api.riotgames.com/lol/match/v5/matches/" + fm;

					request = new HttpGet(url);

					request.addHeader("X-Riot-Token", apiKey);

					response = httpClient.execute(request);

					responseJson = EntityUtils.toString(response.getEntity());

					gson = new Gson();

					MatchDto match = gson.fromJson(responseJson, MatchDto.class);
					
					matches.add(match);
				}
			}

			return matches;
		}
		
		
		
	}

}
