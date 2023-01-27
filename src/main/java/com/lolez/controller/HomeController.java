package com.lolez.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		System.out.println("메인 페이지 이동");

		return "index";
	}

	/*
	 * @RequestMapping(value = "/LoginForm") public ModelAndView loginform() {
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * mav.setViewName("Member/LoginForm");
	 * 
	 * return mav; }
	 * 
	 * @RequestMapping(value = "/JoinForm") public ModelAndView JoinForm() {
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * mav.setViewName("Member/JoinForm");
	 * 
	 * return mav; }
	 */

}
