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
	
	public int summoneserch(String summoneName, String apiKey) throws Exception {
		System.out.println("RiotService summoneserch() 실행");
		
		
		CloseableHttpClient httpClient = HttpClients.createDefault();
		
		String url = "https://kr.api.riotgames.com/lol/summoner/v4/summoners/by-name/"+summoneName+"?api_key="+apiKey;
		
		HttpGet request = new HttpGet(url);
		
		request.addHeader("X-Riot-Token", apiKey);
		
		CloseableHttpResponse response = httpClient.execute(request);
		
		String responseJson = EntityUtils.toString(response.getEntity());
		
		Gson gson = new Gson();
		
		SummonerDto summoner = gson.fromJson(responseJson, SummonerDto.class);
		
		String Stname = sdao.selectusername(summoneName);
		if(Stname != null) {
			System.out.println("등록된 사용자 입니다.");
			System.out.println("기존 내용을 업데이트 합니다.");
			int ur = sdao.updatesummonerinfo(summoner);
			return ur;
		}else {
			System.out.println("등록되지 않은 사용자 입니다.");
			System.out.println("새로운 정보를 추가합니다.");
			int ir = sdao.insertsummonerinfo(summoner);
			return ir;
		}
		
	}
	
	

}
