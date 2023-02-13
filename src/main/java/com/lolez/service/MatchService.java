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
import com.lolez.Matchdto.ObjectiveDto;
import com.lolez.Matchdto.ObjectivesDto;
import com.lolez.Matchdto.ParticipantDto;
import com.lolez.Matchdto.PerkStatsDto;
import com.lolez.Matchdto.PerkStyleDto;
import com.lolez.Matchdto.PerkStyleSelectionDto;
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
					matches.add(match);
				} else {
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
					int Perki = 0;
					int MTir = mdao.insertmetadata(vl.getMetadata());

					// Metadata DB Insert 처리 여부
					if (MTir == 1) {
						System.out.println("Metadata DB Insert 성공");
						System.out.println("\nDB에 Info Insert 실행");
						int IFir = mdao.insertinfo(vl.getInfo());

						// Info DB Insert 처리 여부
						if (IFir == 1) {
							System.out.println("Info DB Insert 성공");

							// Metadata에 있는 puuid들을 다시 list화
							List<String> list = new ArrayList<>(
									Arrays.asList(vl.getMetadata().getParticipants_String().split(",")));

							// TeamDto 배열에 GameId set 설정
							for (int i = 0; i < vl.getInfo().getTeams().size(); i++) {
								vl.getInfo().getTeams().get(i).setGameId(vl.getInfo().getGameId());

								System.out.println("\nDB에 TeamDto Insert 실행");
								int TMir = mdao.insertteam(vl.getInfo().getTeams().get(i));

								if (TMir == 0) {
									System.out.println("Team DB Insert 실패");
									return null;

								} else {
									System.out.println("Team DB Insert 성공");
									System.out.println("\nDB에 ObjectivesDto Insert 실행");

									// ObjectivesDto 컬럼들에 boolean int 변환
									ObjectivesDto ol = vl.getInfo().getTeams().get(i).getObjectives();
									ol.getBaron()
											.setFirst_int(ol.getBaron().convertBooleanToInt(ol.getBaron().isFirst()));
									ol.getChampion().setFirst_int(
											ol.getChampion().convertBooleanToInt(ol.getChampion().isFirst()));
									ol.getDragon()
											.setFirst_int(ol.getDragon().convertBooleanToInt(ol.getDragon().isFirst()));
									ol.getInhibitor().setFirst_int(
											ol.getInhibitor().convertBooleanToInt(ol.getInhibitor().isFirst()));
									ol.getRiftHerald().setFirst_int(
											ol.getRiftHerald().convertBooleanToInt(ol.getRiftHerald().isFirst()));
									ol.getTower()
											.setFirst_int(ol.getTower().convertBooleanToInt(ol.getTower().isFirst()));

									// ObjectivesDto에 GameId set설정
									ol.getBaron().setGameId(vl.getInfo().getGameId());

									// ObjectivesDto teamId set설정
									ol.getBaron().setTeamId(vl.getInfo().getTeams().get(i).getTeamId());

									// ObjectiveDto type set설정
									ol.getBaron().setType("baron");
									ol.getChampion().setType("champion");
									ol.getDragon().setType("dragon");
									ol.getInhibitor().setType("inhibitor");
									ol.getRiftHerald().setType("riftHerald");
									ol.getTower().setType("tower");

									ObjectiveDto[] objectives = { ol.getBaron(), ol.getChampion(), ol.getDragon(),
											ol.getInhibitor(), ol.getRiftHerald(), ol.getTower() };
									for (ObjectiveDto objective : objectives) {
										int OBir = mdao.insertObjectives(objective);

										if (OBir == 0) {
											System.out.println("Objective DB Insert 실패");
											return null;

										}
									}

									System.out.println("Objective DB Insert 성공");
									System.out.println("\nDB에 BanDto Insert 실행");

									for (int a = 0; a < vl.getInfo().getTeams().get(i).getBans().size(); a++) {

										// BanDto에 GameId set설정
										vl.getInfo().getTeams().get(i).getBans().get(a)
												.setGameId(vl.getInfo().getGameId());

										// BanDto teamId set설정
										vl.getInfo().getTeams().get(i).getBans().get(a)
												.setTeamId(vl.getInfo().getTeams().get(i).getTeamId());

										int BANir = mdao.insertban(vl.getInfo().getTeams().get(i).getBans().get(a));

										if (BANir == 0) {
											System.out.println("Ban DB Insert 실패");
											return null;

										}
										System.out.println("Ban DB Insert 성공");

									}

								}
							}

							System.out.println("\nDB에 ParticipantDto Insert 실행");
							// 각 Userpuuid에 맞게 반복하여 set 설정
							// Participants 배열에 GameId set 설정
							for (int i = 0; i < vl.getInfo().getParticipants().size(); i++) {
								ParticipantDto pl = vl.getInfo().getParticipants().get(i);
								pl.setFirstBloodAssist_int(pl.convertBooleanToInt(pl.isFirstBloodAssist()));
								pl.setFirstBloodKill_int(pl.convertBooleanToInt(pl.isFirstBloodKill()));
								pl.setFirstTowerAssist_int(pl.convertBooleanToInt(pl.isFirstTowerAssist()));
								pl.setFirstTowerKill_int(pl.convertBooleanToInt(pl.isFirstTowerKill()));
								pl.setGameEndedInEarlySurrender_int(
										pl.convertBooleanToInt(pl.isGameEndedInEarlySurrender()));
								pl.setGameEndedInSurrender_int(pl.convertBooleanToInt(pl.isGameEndedInSurrender()));
								pl.setTeamEarlySurrendered_int(pl.convertBooleanToInt(pl.isWin()));
								pl.setWin_int(pl.convertBooleanToInt(pl.isFirstBloodAssist()));
								pl.setUserpuuid(list.get(i));
								pl.setGameid(vl.getInfo().getGameId());
								int PTir = mdao.insertparticipant(pl);
								if (PTir == 0) {
									System.out.println("Participant DB Insert 실패");
									return null;
								} else {
									System.out.println("Participant DB Insert 성공");
									System.out.println("\nDB에 PerkStats Insert 실행");

									PerkStatsDto psl = pl.getPerks().getStatPerks();

									// PerkStatsDto에 GameId set설정
									psl.setGameId(vl.getInfo().getGameId());

									// PerkStatsDto perk_style_id에 puuid set설정
									psl.setPerk_style_id(list.get(i));
									int PSTir = mdao.insertstatperks(psl);

									if (PSTir == 1) {
										System.out.println("PerkStats DB Insert 성공");
										System.out.println("\nDB에 PerkStyle Insert 실행");

										PerkStyleDto pyl = pl.getPerks().getStyles().get(i);

										// PerkStyleDto에 GameId set설정
										pyl.setGameId(vl.getInfo().getGameId());

										// PerkStyleDto perk_style_id에 puuid set설정
										pyl.setPerk_style_id(list.get(i));

										int PSYir = mdao.insertperkstyle(pyl);

										if (PSYir == 1) {
											System.out.println("PerkStyle DB Insert 성공");
											System.out.println("\nDB에 PerkStyleSelectionDto Insert 실행");

											for (int a = 0; a < vl.getInfo().getParticipants().get(i).getPerks()
													.getStyles().size(); a++) {

												for (int b = 0; b < vl.getInfo().getParticipants().get(i).getPerks()
														.getStyles().get(a).getSelections().size(); b++) {
													int PSLir = mdao.insertperkstyleselect(
															vl.getInfo().getParticipants().get(i).getPerks().getStyles()
																	.get(a).getSelections().get(b));

													if (PSLir == 0) {
														System.out.println("PerkStyleSelection DB Insert 실패");
														return null;

													}
												}
											}

										} else {
											System.out.println("PerkStyle DB Insert 실패");
											return null;

										}

									} else {
										System.out.println("PerkStats DB Insert 실패");
										return null;

									}
								}
							}

						} else {
							System.out.println("Info DB Insert 실패");
							return null;
						}

					} else {
						System.out.println("Metadata DB Insert 실패");
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
