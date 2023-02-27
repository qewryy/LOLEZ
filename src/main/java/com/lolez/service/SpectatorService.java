package com.lolez.service;

import java.io.IOException;
import java.util.ArrayList;

import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;
import com.lolez.Spectatordto.CurrentGameInfoDto;
import com.lolez.dao.SpectatorDao;
import com.lolez.dto.ProusersDto;

@Service
public class SpectatorService {

	@Autowired
	private SpectatorDao spdao;

	public ArrayList<ProusersDto> selectprousers() {
		System.out.println("SpectatorService selectprousers() 실행");
		ArrayList<ProusersDto> users = spdao.selectprousers();
		return users;
	}

	public ArrayList<CurrentGameInfoDto> currentserch(ArrayList<ProusersDto> prousers, String apiKey) throws Exception {
		System.out.println("SpectatorService currentserch() 실행");
		ArrayList<CurrentGameInfoDto> crList = new ArrayList<CurrentGameInfoDto>();
		for (ProusersDto pl : prousers) {

			CloseableHttpClient httpClient = HttpClients.createDefault();

			String url = "https://kr.api.riotgames.com/lol/spectator/v4/active-games/by-summoner/" + pl.getProid();

			HttpGet request = new HttpGet(url);

			request.addHeader("X-Riot-Token", apiKey);

			CloseableHttpResponse response = httpClient.execute(request);

			String responseJson = EntityUtils.toString(response.getEntity());

			Gson gson = new Gson();

			CurrentGameInfoDto current = gson.fromJson(responseJson, CurrentGameInfoDto.class);
			
			if(current.getGameId() != 0) {
				System.out.println(pl.getProname()+"님이 실시간 게임 중 입니다.");
				current.setUserid(pl.getProid());
				current.setUsername(pl.getProname());
				current.setUserteam(pl.getProteam());
				crList.add(current);
			}else {
				System.out.println(pl.getProname()+"님은 실시간 게임 중이 아닙니다.");
			}
		}

		return crList;
	}

}
