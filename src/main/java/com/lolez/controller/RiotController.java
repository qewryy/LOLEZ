package com.lolez.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lolez.service.SummonerService;


@Controller
public class RiotController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private SummonerService ssvc;
	
	private String apiKey = "RGAPI-4125477d-d2c7-44a1-bc83-3b64457be6f3";
	
	@RequestMapping(value = "/SummoneSerch")
	public ModelAndView SummoneSerch(String summoneName) throws Exception {
		System.out.println("소환사 전적 검색 요청");
		ModelAndView mav = new ModelAndView();
		
		int sr = ssvc.summoneserch(summoneName, apiKey);
		
		
		
		return mav;
	}

}
