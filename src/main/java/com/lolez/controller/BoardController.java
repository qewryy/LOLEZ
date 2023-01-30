package com.lolez.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lolez.dto.BoardDto;
import com.lolez.service.BoardService;

@Controller
public class BoardController {

	@Autowired
	private HttpSession session;

	@Autowired
	private BoardService bsvc;

	@RequestMapping(value = "/boardList")
	public ModelAndView boardList() {
		System.out.println("게시판 목록창 요청");
		ModelAndView mav = new ModelAndView();
		// 1. 글목록 조회
		ArrayList<BoardDto> boardList = bsvc.boardList();
		mav.addObject("boardList", boardList);

		// 2. 글목록페이지 지정
		mav.setViewName("board/BoardList");
		return mav;
	}

	@RequestMapping(value = "/boardWrite")
	public ModelAndView BoardWrite() {
		System.out.println("글 작성 페이지 요청");
		ModelAndView mav = new ModelAndView();
		
		if(session.getAttribute("loginNickname") == null) {
			mav.setViewName("redirect:/memberLoginForm");
			return mav;
		}else {
			mav.setViewName("board/BoardWrite");
		}

		return mav;
	}
	
	

}
