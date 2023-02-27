package com.lolez.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lolez.Leaguedto.LeagueEntryDto;
import com.lolez.Matchdto.MatchDto;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.service.LeagueService;
import com.lolez.service.MatchService;
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

	private String apiKey = "RGAPI-2de83620-ed7c-4bb0-98f3-87706d4f39e9";

	@RequestMapping(value = "/SummoneSerch")
	public ModelAndView SummoneSerch(String summoneName) throws Exception {
		System.out.println("소환사 전적 검색 요청");
		System.out.println("검색할 소환사 이름 : " + summoneName);
		ModelAndView mav = new ModelAndView();

		SummonerDto Sresult = ssvc.summoneserch(summoneName, apiKey);

		if (Sresult != null) {
			if (Sresult.getMessage() != null) {
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
					
					
				
					System.out.println("매치 정보 검색 정상 처리 완료");

				} else {
					System.out.println("오류가 발생했습니다.");
					mav.setViewName("redirect:/");
					return mav;
				}

			}
			

			mav.setViewName("record/RecordPage");
		} else {
			System.out.println("오류가 발생했습니다.");
			mav.setViewName("redirect:/");

		}

		return mav;
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
		return Mresult; 
	}

}
