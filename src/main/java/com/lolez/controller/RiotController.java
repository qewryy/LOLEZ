package com.lolez.controller;

import java.util.ArrayList;

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

	private String apiKey = "RGAPI-bff4cb69-275d-4386-87ef-282365941f78";

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

				// 랭크 값 받아오기
				LeagueEntryDto Lresult = lsvc.leagueserch(Sresult, apiKey, 0);

				if (Lresult != null) {
					if(!(Lresult.isUnrankBoolean())) {
						
					
					// Lresult.size가 2일시 true
					if (Lresult.isDuoBoolean()) {
						// SoloList 솔로랭크 검색 요청
						LeagueEntryDto SoloList = lsvc.leagueserch(Sresult, apiKey, 1);
						session.setAttribute("SoloList", SoloList);
						

						// Lresult = 자유랭크
						LeagueEntryDto DuoList = Lresult;
						session.setAttribute("DuoList", DuoList);

					} else {
						// Lresult의 queueType이 솔로랭크일시 true
						if (Lresult.isSoloBoolean()) {
							LeagueEntryDto SoloList = Lresult;
							session.setAttribute("SoloList", SoloList);
						} else {
							LeagueEntryDto DuoList = Lresult;
							session.setAttribute("DuoList", DuoList);
						}
					}
				}else {
					// Lresult 결과가 unrank 일시
					LeagueEntryDto Unrank = Lresult;
					session.setAttribute("Unrank", Unrank);
				}

					System.out.println("리그 검색 정상 처리 완료.");
					
					System.out.println("소환사 정보로 Match 검색 요청");

					System.out.println("리그 정보로 최근 20 게임 정보 검색 요청");

					ArrayList<MatchDto> Mresult = msvc.matchserch(Sresult, apiKey, 1);
					
					session.setAttribute("MatchList", Mresult);
					
					System.out.println("매치 정보 검색 정상 처리 완료");
					
				}else {
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
		System.out.println("소환사 정보로 League 검색 요청");
		ArrayList<LeagueEntryDto> LresultList = new ArrayList<LeagueEntryDto>();

		// 랭크 값 받아오기
		LeagueEntryDto Lresult = lsvc.leagueserch(Sresult, apiKey, 0);

		if (Lresult != null) {
			if(!(Lresult.isUnrankBoolean())) {
				
			
			// Lresult.size가 2일시 true
			if (Lresult.isDuoBoolean()) {
				// SoloList 솔로랭크 검색 요청
				LeagueEntryDto SoloList = lsvc.leagueserch(Sresult, apiKey, 1);
				LresultList.add(SoloList);

				// Lresult = 자유랭크
				LeagueEntryDto DuoList = Lresult;
				LresultList.add(DuoList);

			} else {
				// Lresult의 queueType이 솔로랭크일시 true
				if (Lresult.isSoloBoolean()) {
					LeagueEntryDto SoloList = Lresult;
					LresultList.add(SoloList);
				} else {
					LeagueEntryDto DuoList = Lresult;
					LresultList.add(DuoList);
				}
			}
		}else {
			// Lresult 결과가 unrank 일시
			LeagueEntryDto Unrank = Lresult;
			LresultList.add(Unrank);
		}

			System.out.println("리그 검색 정상 처리 완료.");
			return LresultList;
			
		}else {
			System.out.println("오류가 발생했습니다.");
			return null;
		}

	}

	@RequestMapping(value = "/Matchrenewal")
	public @ResponseBody ArrayList<MatchDto> Matchrenewal(SummonerDto Sresult, int j) throws Exception {
		System.out.println("소환사 정보로 Match 검색 요청");

		System.out.println("리그 정보로 최근 "+(j*20-20)+"~"+(j*20)+"게임 정보 검색 요청");

		ArrayList<MatchDto> Mresult = msvc.matchserch(Sresult, apiKey, j);
		return Mresult;
	}

}
