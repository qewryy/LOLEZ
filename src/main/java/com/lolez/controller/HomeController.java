package com.lolez.controller;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.lolez.service.MemberService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private MemberService msvc;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	private boolean i = true;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		System.out.println("메인 페이지 이동");
		if(i) {
			 // 애플리케이션 시작 시 출석체크 초기화 로직 구현
			int ur = msvc.updatedaily(0);
	    	if(ur < 1) {
				System.out.println("일일 출석 초기화에 오류가 발생했습니다.");
			}else {
				System.out.println("정상적으로 처리되었습니다.");
			}
	    	i = false;
		}
		return "index";
	}


}
