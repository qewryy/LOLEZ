package com.lolez.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
	
	
	private String apiKey = "RGAPI-016f4a26-a109-4543-986a-18a49369b672";

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
				
			}else {
				System.out.println("소환사 검색 정상 처리 완료.");
				
				System.out.println("소환사 정보로 League 검색 요청");
				
				// 0 : 랭크 값 받아오기
				LeagueEntryDto Lresult0 = lsvc.leagueserch(Sresult, apiKey, 0);
				session.setAttribute("DuoList", Lresult0);
				
				if(Lresult0.isDuoBoolean()) {
					// 1 : 솔로랭크 값 받아오기
					System.out.println("소환사 정보로 Solo League 검색 요청");
					LeagueEntryDto Lresult1 = lsvc.leagueserch(Sresult, apiKey, 1);
					session.setAttribute("SoloList", Lresult1);
				}
				
					System.out.println("리그 검색 정상 처리 완료.");
					mav.setViewName("redirect:/");
					
			}
			
			ArrayList<MatchDto> Mresult = msvc.matchserch(Sresult, apiKey);
			
		} else {
			System.out.println("오류가 발생했습니다.");
			mav.setViewName("redirect:/");
			
		}

		
		
		
		return mav;
	}

}
