package com.lolez.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lolez.service.SummonerService;


@Controller
public class SummonerController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private SummonerService ssvc;
	
	private String apiKey = "RGAPI-0b50f770-3b1b-42bb-995c-1eb605a71b7b";
	
	@RequestMapping(value = "/SummoneSerch")
	public ModelAndView SummoneSerch(String summoneName) throws Exception {
		System.out.println("소환사 전적 검색 요청");
		
		System.out.println("검색할 소환사 이름 : " + summoneName);
		ModelAndView mav = new ModelAndView();
		
		int rs = ssvc.summoneserch(summoneName, apiKey);
		
		if(rs == 1) {
			System.out.println("정상 처리 완료.");
			mav.setViewName("redirect:/");
			return mav;
		}else {
			System.out.println("오류가 발생했습니다.");
			mav.setViewName("redirect:/");
			return mav;
		}
		
	}

}
