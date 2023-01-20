package com.lolez.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lolez.dto.MemberDto;
import com.lolez.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memsvc;
	
	@RequestMapping(value = "/JoinForm")
	public ModelAndView memberJoinForm() {
		System.out.println("회원가입 페이지 이동");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Member/JoinForm");
		return mav;
	}

	@RequestMapping(value = "/LoginForm")
	public ModelAndView LoginForm() {
		System.out.println("로그인 페이지 이동");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Member/LoginForm");
		return mav;
	}
	
	@RequestMapping(value = "/memberJoin")
	public ModelAndView memberJoin(MemberDto joinInfo, RedirectAttributes ra)
			throws IllegalStateException, IOException {
		System.out.println("회원가입 요청");
		ModelAndView mav = new ModelAndView();
		int joinResult = memsvc.memberJoin_svc(joinInfo);
		if (joinResult > 0) {
			ra.addFlashAttribute("redirectMsg", "정상적으로 회원가입 되었습니다.");
			mav.setViewName("redirect:/");
		} else {
			ra.addFlashAttribute("redirectMsg", "회원가입에 실패했습니다.");
			mav.setViewName("redirect:/JoinForm");
		}
		return mav;
	}
}
