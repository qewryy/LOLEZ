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
	
	private String apiKey = "RGAPI-5ab9afb2-377a-4821-a233-3278c37f5a7a";
	
	@RequestMapping(value = "/SummoneSerch")
	public ModelAndView SummoneSerch(String summoneName) throws Exception {
		System.out.println("소환사 전적 검색 요청");
		ModelAndView mav = new ModelAndView();
		
		int sr = ssvc.summoneserch(summoneName, apiKey);
		
		
		
		return mav;
	}

}
