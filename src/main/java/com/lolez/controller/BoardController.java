package com.lolez.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {
	

	@RequestMapping(value = "/boardList")
	public ModelAndView boardList() {
		System.out.println("게시판 목록창 요청");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/BoardList");
		return mav;
	}
	
	@RequestMapping(value = "/boardWrite")
	public ModelAndView BoardWrite() {
		System.out.println("글 작성 페이지 요청");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/BoardWrite");
		
		return mav;
	}

}
