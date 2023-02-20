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
import com.lolez.Matchdto.BanDto;
import com.lolez.Matchdto.MatchDto;
import com.lolez.Matchdto.ObjectiveDto;
import com.lolez.Matchdto.ObjectivesDto;
import com.lolez.Matchdto.ParticipantDto;
import com.lolez.Matchdto.PerkStatsDto;
import com.lolez.Matchdto.PerkStyleDto;
import com.lolez.Matchdto.PerkStyleSelectionDto;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.dao.MatchDao;

@Service
public class MatchService1 {

	@Autowired
	private MatchDao mdao;

	public List<String> matchleagueserch(SummonerDto sresult, String apiKey, int j) throws Exception {
		System.out.println("MatchService matchleagueserch() 실행");
		int v = j * 20;
		ArrayList<MatchDto> matches = new ArrayList<MatchDto>();

		CloseableHttpClient httpClient = HttpClients.createDefault();

		String url = "https://asia.api.riotgames.com/lol/match/v5/matches/by-puuid/" + sresult.getPuuid()
				+ "/ids?start="+(v-20)+"&count="+v;

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
			return matchIdList;
			
		}
		
	}

}
