package com.lolez.service;

import java.util.ArrayList;
import java.lang.reflect.Type;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.lolez.Leaguedto.LeagueEntryDto;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.dao.LeagueDao;


@Service
public class LeagueService {

	@Autowired
	private LeagueDao ldao;

	public LeagueEntryDto leagueserch(SummonerDto sresult, String apiKey, int i) throws Exception {
		System.out.println("LeagueService leagueserch() 실행");

		String url = "https://kr.api.riotgames.com//lol/league/v4/entries/by-summoner/" + sresult.getId();
		
		CloseableHttpClient httpClient = HttpClients.createDefault();
		
		HttpGet request = new HttpGet(url);

		request.addHeader("X-Riot-Token", apiKey);

		CloseableHttpResponse response = httpClient.execute(request);

		String responseJson = EntityUtils.toString(response.getEntity());

		Gson gson = new Gson();
		Type type = new TypeToken<ArrayList<LeagueEntryDto>>(){}.getType();
		ArrayList<LeagueEntryDto> LeagueData = gson.fromJson(responseJson, type);

		// 받아온 데이터 유무 확인
		// true : 기존 데이터 Select
		// false : error return
		if (!(LeagueData.isEmpty())) {
			String LeagueId = LeagueData.get(i).getSummonerId();
			String LeagueQueue = LeagueData.get(i).getQueueType();
			LeagueEntryDto Stdata = ldao.selectleaguedata(LeagueId, LeagueQueue);

			// 신규 데이터에 승격전 정보가 있다면 승격전 테이블에 Id set
			if (LeagueData.get(i).getMiniSeriesDto() != null) {
				// 신규 데이터에 MiniSeriesDto의 PK인 Id set
				LeagueData.get(i).getMiniSeriesDto().setId(LeagueData.get(i).getSummonerId());
			}

			// 기존 데이터 유무 확인
			// true : 여부에 따라 update, delete
			// false : 여부에 따라 insert
			if (Stdata != null) {
				System.out.println("기존에 등록된 리그 기록입니다.");

				// 기존 데이터에 승격전 정보가 있다면 승격전 테이블에 Id set
				if (Stdata.getMiniSeriesDto() != null) {
					// 기존 데이터에 MiniSeriesDto의 PK인 Id set
					Stdata.getMiniSeriesDto().setId(LeagueId);
				}

				// 받아온 데이터와 기존 데이터가 동일한지 확인
				// true : 동일하면 아무 수정 없이 pass
				// false : 값이 하나라도 다르다면 여부에 따라 update, delete
				if (Stdata.getClass() == LeagueData.get(i).getClass()) {
					System.out.println("리그 기록이 동일합니다.");
					// pass

				} else {
					System.out.println("리그 기록이 변경되었습니다.");
					System.out.println("기존 내용을 update 합니다.");

					// update
					int ur = ldao.updateleaguedata(LeagueData.get(i));

					// update 처리 유무
					if (ur == 1) {
						System.out.println("리그 정보가 정상적으로 수정되었습니다.");

					} else {
						System.out.println("오류가 발생했습니다.");

						return null;

					}

				}
			} else {
				System.out.println("등록되지 않은 리그 기록입니다.");

				int ir = ldao.insertleaguedata(LeagueData.get(i));

				// insert 처리 유무
				if (ir == 1) {
					System.out.println("리그 정보가 정상적으로 추가되었습니다.");
					if(LeagueData.size() > 1 && i == 0) {
						LeagueData.get(i).setDuoBoolean(true);
					}else {
						if(LeagueData.get(i).getQueueType().equals("RANKED_SOLO_5x5")) {
							LeagueData.get(i).setSoloBoolean(true);
						}
					}
					
					return LeagueData.get(i);
				} else {
					System.out.println("오류가 발생했습니다.");

					return null;

				}

			}

			
			System.out.println("기존 데이터에 승격전 기록이 있는지 확인");
			// true : 여부에 따라 update, delete
			// false : 여부에 따라 insert
			if (Stdata.getMiniSeriesDto() != null) {
				System.out.println("기존 데이터에 승격전 기록이 존재합니다.");

				System.out.println("새로운 데이터에 승격전 기록이 있는지 확인");
				// true : 여부에 따라 update문 작성
				// false : delete문 작성
				if (LeagueData.get(i).getMiniSeriesDto() != null) {
					System.out.println("신규 데이터에 승격전 기록이 존재합니다.");

					System.out.println("새로운 데이터와 기존 데이터의 승격전 정보가 같은지 확인");
					// true : 동일하면 아무 수정 없이 pass
					// false : 여부에 따라 update문 작성
					if (Stdata.getMiniSeriesDto().getClass() == LeagueData.get(i).getMiniSeriesDto().getClass()) {
						System.out.println("승격전 기록이 동일합니다.");
						// pass

					} else {
						System.out.println("승격전 기록이 다릅니다.");
						System.out.println("기존 내용을 update 합니다.");

						// update
						int ur = ldao.updateminidata(LeagueData.get(i).getMiniSeriesDto());

						// update 처리 유무
						if (ur == 1) {
							System.out.println("승격전 정보가 정상적으로 수정되었습니다.");

						} else {
							System.out.println("오류가 발생했습니다.");

							return null;

						}

					}
				} else {
					System.out.println("신규 데이터에 승격전 기록이 없습니다.");

					int dr = ldao.deleteminidata(Stdata.getMiniSeriesDto().getId());

					// delete 처리 유무
					if (dr == 1) {
						System.out.println("승격전 정보가 정상적으로 삭제되었습니다.");

					} else {
						System.out.println("오류가 발생했습니다.");

						return null;

					}
				}
			} else {
				System.out.println("기존 데이터에 승격전 기록이 없습니다.");

				System.out.println("신규 데이터에 승격전 기록 유무 확인");
				// true : insert문 작성
				// false : 기록이 없다면 pass
				if (LeagueData.get(i).getMiniSeriesDto() != null) {
					System.out.println("신규 데이터에 승격전 기록이 있습니다.");

					int ir = ldao.insertminidata(LeagueData.get(i).getMiniSeriesDto());

					// insert 처리 유무
					if (ir == 1) {
						System.out.println("승격전 정보가 정상적으로 추가되었습니다.");

					} else {
						System.out.println("오류가 발생했습니다.");

						return null;

					}

				} else {
					System.out.println("신규 데이터에 승격전 기록이 없습니다.");
					// pass
				}
			}

		} else {
			if(i == 0) {
				System.out.println("리그 정보가 존재하지 않습니다.");
				LeagueEntryDto unrank = new LeagueEntryDto();
				unrank.setUnrankBoolean(true);
				return unrank;
			}else {
				System.out.println("이유 모를 오류발생");
				
				// error return
				return null;
			}
		}
		
		if(LeagueData.size() > 1 && i == 0) {
			LeagueData.get(i).setDuoBoolean(true);
		}else {
			if(LeagueData.get(i).getQueueType().equals("RANKED_SOLO_5x5")) {
				LeagueData.get(i).setSoloBoolean(true);
			}
		}
		
		return LeagueData.get(i);
	}

}
