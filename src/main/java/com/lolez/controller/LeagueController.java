package com.lolez.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class LeagueController {
	
	@Autowired
	private HttpSession session;
	

	
	private String apiKey = "RGAPI-0b50f770-3b1b-42bb-995c-1eb605a71b7b";
	
	@RequestMapping(value = "/LeagueSerch")
	public ModelAndView LeagueSerch(String summoneName) throws Exception {
		
		return null;
	}

}
