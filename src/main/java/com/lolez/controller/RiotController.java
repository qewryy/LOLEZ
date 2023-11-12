package com.lolez.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.http.client.ClientProtocolException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.lolez.Leaguedto.LeagueEntryDto;
import com.lolez.Matchdto.MatchDto;
import com.lolez.Spectatordto.CurrentGameInfoDto;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.dto.ProusersDto;
import com.lolez.service.LeagueService;
import com.lolez.service.MatchService;
import com.lolez.service.SpectatorService;
import com.lolez.service.SummonerService;

@Controller
public class RiotController {

	@Autowired
	private HttpSession session;

	@Autowired
	private SummonerService ssvc;

	@Autowired
	private LeagueService lsvc;

	@Autowired
	private MatchService msvc;
	
	@Autowired
	private SpectatorService spsvc;

	private String apiKey = "RGAPI-0c74a961-6ea9-4a48-8988-b9d027dbff04";

	@RequestMapping(value = "/SummoneSerch")
	public ModelAndView SummoneSerch(String summoneName) throws Exception {
		System.out.println("소환사 전적 검색 요청");
		System.out.println("검색할 소환사 이름 : " + summoneName);
		ModelAndView mav = new ModelAndView();

		SummonerDto Sresult = ssvc.summoneserch(summoneName, apiKey);

		if (Sresult != null) {
			if (Sresult.getName() == null) {
				System.out.println("404 에러 페이지 이동");
				mav.setViewName("redirect:/");

			} else {
				System.out.println("소환사 검색 정상 처리 완료.");
				session.setAttribute("Summoner", Sresult);

				System.out.println("소환사 정보로 League 검색 요청");
				session.removeAttribute("SoloList"); 
				session.removeAttribute("DuoList"); 
				session.removeAttribute("Unrank"); 
				// 랭크 값 받아오기
				LeagueEntryDto Lresult = lsvc.leagueserch(Sresult, apiKey, 0);

				if (Lresult != null) {
					if (!(Lresult.isUnrankboolean())) {

						// Lresult.DuoBoolean이 true일 시
						if (Lresult.isDuoboolean()) {
							// Lresult = 자유랭크
							LeagueEntryDto DuoList = Lresult;
							session.setAttribute("DuoList", DuoList);

							for (int i = 1; i < Lresult.getDatasize(); i++) {
								if (Lresult.getDatasize() > 1) {
									// SoloList 솔로랭크 검색 요청
									LeagueEntryDto DLresult = lsvc.leagueserch(Sresult, apiKey, i);
									if (DLresult.isSoloboolean()) {
										session.setAttribute("SoloList", DLresult);
									}
								}

							}

						} else if (Lresult.isSoloboolean()) {
							// Lresult의 queueType이 솔로랭크일시 true
							LeagueEntryDto SoloList = Lresult;
							session.setAttribute("SoloList", SoloList);

							for (int i = 1; i < Lresult.getDatasize(); i++) {
								if (Lresult.getDatasize() > 1) {
									// DuoList 자유랭크 검색 요청
									LeagueEntryDto SLresult = lsvc.leagueserch(Sresult, apiKey, i);
									if (SLresult.isDuoboolean()) {
										session.setAttribute("DuoList", SLresult);
									}
								}

							}
						} else {
							if (Lresult.getDatasize() >= 1) {

								for (int i = 1; i < Lresult.getDatasize(); i++) {
									if (Lresult.getDatasize() > 1) {
										LeagueEntryDto RLresult = lsvc.leagueserch(Sresult, apiKey, i);

										if (RLresult.isDuoboolean()) {
											// Lresult = 자유랭크
											LeagueEntryDto DuoList = RLresult;
											session.setAttribute("DuoList", DuoList);

											if (RLresult.getDatasize() > 1) {
												// SoloList 솔로랭크 검색 요청
												LeagueEntryDto SoloList = lsvc.leagueserch(Sresult, apiKey, i);
												if (SoloList.isSoloboolean()) {
													session.setAttribute("SoloList", SoloList);
												}
											}

										} else if (RLresult.isSoloboolean()) {
											// Lresult의 queueType이 솔로랭크일시 true
											LeagueEntryDto SoloList = RLresult;
											session.setAttribute("SoloList", SoloList);

											if (RLresult.getDatasize() > 1) {
												// DuoList 자유랭크 검색 요청
												LeagueEntryDto DuoList = lsvc.leagueserch(Sresult, apiKey, i);
												if (DuoList.isSoloboolean()) {
													session.setAttribute("DuoList", DuoList);
												}
											}

										}
									}

								}
							}else {
								// Lresult.getDataSize()가 2이상이 아닐 시 unrank 설정
								LeagueEntryDto Unrank = Lresult;
								session.setAttribute("Unrank", Unrank);
							}
						}
						
						
					} else {
						// Lresult 결과가 unrank 일시
						LeagueEntryDto Unrank = Lresult;
						session.setAttribute("Unrank", Unrank);
					}

					System.out.println("리그 검색 정상 처리 완료.");

					System.out.println("소환사 정보로 Match 검색 요청");

					System.out.println("리그 정보로 최근 20 게임 정보 검색 요청");
					
					/*
					 * List<String> MLresult = msvc.matchleagueserch(Sresult, apiKey, 1); for
					 * (String ml : MLresult) {
					 * 
					 * }
					 */
					
					ArrayList<MatchDto> Mresult = msvc.matchserch(Sresult, apiKey, 1); 
					
					
					session.setAttribute("MatchList", Mresult); 
					session.setAttribute("Listcount", Mresult.size()); 
					
					
					System.out.println("매치 정보 검색 정상 처리 완료");

					mav.setViewName("record/RecordPage");
				} else {
					System.out.println("오류가 발생했습니다.");
					mav.setViewName("redirect:/");
					return mav;
				}

			}
			

		} else {
			System.out.println("오류가 발생했습니다.");
			mav.setViewName("redirect:/");

		}

		return mav;
	}
	
	@RequestMapping(value = "/proList")
	public ModelAndView proList() throws Exception {
		System.out.println("프로게이머 승부예측 목록 요청");
		ModelAndView mav = new ModelAndView();
		ArrayList<ProusersDto> prousers = spsvc.selectprousers();
		ArrayList<CurrentGameInfoDto> current = spsvc.currentserch(prousers, apiKey);
		mav.addObject("progameList", current);
		

		mav.setViewName("redirect:/");
		return mav;
	}
	
	@SuppressWarnings("null")
	@RequestMapping(value = "/proListView")
	public String proListView(ArrayList<CurrentGameInfoDto> progameList) throws ClientProtocolException, IOException {
		System.out.println("프로게이머 승부예측 상세보기 요청");
		ArrayList<LeagueEntryDto> Llist = null;
		LeagueEntryDto Lresult;
		for(CurrentGameInfoDto pl : progameList) {

			Lresult = lsvc.leagueserch(pl.getGameId(), apiKey, 0);
			
			Llist.add(Lresult);
		}
		
		Gson gson = new Gson();
		String json = gson.toJson(Llist);
		System.out.println(json);
		
		return json;
	}

	@RequestMapping(value = "/Leaguerenewal")
	public @ResponseBody ArrayList<LeagueEntryDto> Leaguerenewal(SummonerDto Sresult) throws Exception {
		ArrayList<LeagueEntryDto> LresultList = new ArrayList<LeagueEntryDto>();
		System.out.println("소환사 정보로 League 검색 요청");

		// 랭크 값 받아오기
		LeagueEntryDto Lresult = lsvc.leagueserch(Sresult, apiKey, 0);

		if (Lresult != null) {
			if (!(Lresult.isUnrankboolean())) {

				// Lresult.DuoBoolean이 true일 시
				if (Lresult.isDuoboolean()) {
					// Lresult = 자유랭크
					LeagueEntryDto DuoList = Lresult;
					LresultList.add(DuoList);

					for (int i = 0; i < Lresult.getDatasize(); i++) {
						if (Lresult.getDatasize() > 1) {
							// SoloList 솔로랭크 검색 요청
							LeagueEntryDto SoloList = lsvc.leagueserch(Sresult, apiKey, i);
							if (SoloList.isSoloboolean()) {
								LresultList.add(SoloList);
							}
						}

					}

				} else if (Lresult.isSoloboolean()) {
					// Lresult의 queueType이 솔로랭크일시 true
					LeagueEntryDto SoloList = Lresult;
					LresultList.add(SoloList);

					for (int i = 0; i < Lresult.getDatasize(); i++) {
						if (Lresult.getDatasize() > 1) {
							// SoloList 솔로랭크 검색 요청
							LeagueEntryDto DuoList = lsvc.leagueserch(Sresult, apiKey, i);
							if (DuoList.isSoloboolean()) {
								LresultList.add(DuoList);
							}
						}

					}
				}else {
					if (Lresult.getDatasize() >= 1) {

						for (int i = 1; i < Lresult.getDatasize(); i++) {
							if (Lresult.getDatasize() > 1) {
								LeagueEntryDto RLresult = lsvc.leagueserch(Sresult, apiKey, i);

								if (RLresult.isDuoboolean()) {
									// Lresult = 자유랭크
									LeagueEntryDto DuoList = RLresult;
									session.setAttribute("DuoList", DuoList);

									if (RLresult.getDatasize() > 1) {
										// SoloList 솔로랭크 검색 요청
										LeagueEntryDto SoloList = lsvc.leagueserch(Sresult, apiKey, i);
										if (SoloList.isSoloboolean()) {
											session.setAttribute("SoloList", SoloList);
										}
									}

								} else if (RLresult.isSoloboolean()) {
									// Lresult의 queueType이 솔로랭크일시 true
									LeagueEntryDto SoloList = RLresult;
									session.setAttribute("SoloList", SoloList);

									if (RLresult.getDatasize() > 1) {
										// DuoList 자유랭크 검색 요청
										LeagueEntryDto DuoList = lsvc.leagueserch(Sresult, apiKey, i);
										if (DuoList.isSoloboolean()) {
											session.setAttribute("DuoList", DuoList);
										}
									}

								}
							}

						}
					}else {
						// Lresult.getDataSize()가 2이상이 아닐 시 unrank 설정
						LeagueEntryDto Unrank = Lresult;
						session.setAttribute("Unrank", Unrank);
					}
				}
			} else {
				// Lresult 결과가 unrank 일시
				LeagueEntryDto Unrank = Lresult;
				LresultList.add(Unrank);
			}

			System.out.println("리그 검색 정상 처리 완료.");
			return LresultList;

		} else {
			System.out.println("오류가 발생했습니다.");
			return null;
		}

	}

	@RequestMapping(value = "/Matchrenewal")
	public @ResponseBody ArrayList<MatchDto> Matchrenewal(SummonerDto Sresult, int j) throws Exception {
		System.out.println("소환사 정보로 Match 검색 요청");

		System.out.println("리그 정보로 최근 " + (j * 5 - 5) + "~" + (j * 5) + "게임 정보 검색 요청");

		ArrayList<MatchDto> Mresult = msvc.matchserch(Sresult, apiKey, j); 
		session.setAttribute("MatchList", Mresult); 
		session.setAttribute("Listcount", Mresult.size()); 
		return Mresult; 
	}

}
