package com.lolez.service;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.dao.SummonerDao;

@Service
public class SummonerService {

	@Autowired
	private SummonerDao sdao;

	public SummonerDto summoneserch(String summoneName, String apiKey) throws Exception {
		System.out.println("SummonerService summoneserch() 실행");
		if(summoneName.length() == 2) {
			summoneName = summoneName.substring(0, 1) + " " + summoneName.substring(1);
		}
		String replaceName = summoneName.replace(" ", "%20"); // 공백을 UTF-8로 변환

		CloseableHttpClient httpClient = HttpClients.createDefault();

		String url = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/" + replaceName;

		HttpGet request = new HttpGet(url);

		request.addHeader("X-Riot-Token", apiKey);

		CloseableHttpResponse response = httpClient.execute(request);

		String responseJson = EntityUtils.toString(response.getEntity());

		Gson gson = new Gson();

		SummonerDto summoner = gson.fromJson(responseJson, SummonerDto.class); 
		// gson을 Dto객체에 담기
		
		String summonerid = summoner.getId();
		if (summoner.getName() == null) {
			System.out.println("존재하지 않는 소환자 입니다.");
			//에러 메세지 전송
			
			
		} else {
			SummonerDto Stdata = sdao.selectusername(summonerid);
			if (Stdata != null) {
				System.out.println("등록된 사용자 입니다.");
				// 검색 결과가 같다면 pass, 다르다면 update

				if (Stdata.getClass() == summoner.getClass()) {
					System.out.println("검색 결과가 같습니다.");
					// pass
					
				} else {
					System.out.println("기존 내용을 update 합니다.");
					int ur = sdao.updatesummonerinfo(summoner);
					// update
					
					// update 처리 유무
					if (ur == 1) {
						System.out.println("내용이 정상적으로 추가되었습니다.");
						
					} else {
						System.out.println("오류가 발생했습니다.");
						
						return null;
						
					}
				}
			} else {
				System.out.println("등록되지 않은 사용자 입니다.");
				System.out.println("새로운 정보를 Insert 합니다.");
				// 검색 결과가 존재하지 않아 insert
				
				int ir = sdao.insertsummonerinfo(summoner);
				
				// insert 처리 유무
				if (ir == 1) {
					System.out.println("정상적으로 추가되었습니다.");
					
				} else {
					System.out.println("오류가 발생했습니다.");
					
					return null;
					
				}

			}
		}
		return summoner;
	}

}
