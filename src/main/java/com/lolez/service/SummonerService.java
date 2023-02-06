package com.lolez.service;

import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.lolez.dao.SummonerDao;
import com.lolez.dto.SummonerDto;

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
		
		int ir = sdao.insertsummonerinfo(summoner);
		
		return ir;
	}
	
	

}
