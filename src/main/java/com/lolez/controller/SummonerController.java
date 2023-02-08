package com.lolez.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lolez.Leaguedto.LeagueEntryDto;
import com.lolez.Summonerdto.SummonerDto;
import com.lolez.service.LeagueService;
import com.lolez.service.SummonerService;

@Controller
public class SummonerController {

	@Autowired
	private SummonerService ssvc;

	@Autowired
	private LeagueService lsvc;

	private String apiKey = "RGAPI-611a9f24-6359-4b4e-9334-031ec0298b56";

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
				
				LeagueEntryDto Lresult = lsvc.leagueserch(Sresult, apiKey);
				
				if(Lresult != null) {
					System.out.println("리그 검색 정상 처리 완료.");
					mav.setViewName("redirect:/");
					
				}else {
					System.out.println("오류가 발생했습니다.");
					mav.setViewName("redirect:/");
				}
			}

			
		} else {
			System.out.println("오류가 발생했습니다.");
			mav.setViewName("redirect:/");
			
		}

		return mav;
	}

}
