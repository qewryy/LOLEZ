package com.lolez.controller;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		System.out.println("ȸ������ ������ �̵�");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Member/JoinForm");
		return mav;
	}

	@RequestMapping(value = "/LoginForm")
	public ModelAndView LoginForm() {
		System.out.println("�α��� ������ �̵�");
		ModelAndView mav = new ModelAndView();
		mav.setViewName("Member/LoginForm");
		return mav;
	}
	
	@RequestMapping(value = "/memberJoin")
	public ModelAndView memberJoin(MemberDto joinInfo, RedirectAttributes ra)
			throws IllegalStateException, IOException {
		System.out.println("ȸ������ ��û");
		ModelAndView mav = new ModelAndView();
		int joinResult = memsvc.memberJoin_svc(joinInfo);
		if (joinResult > 0) {
			ra.addFlashAttribute("redirectMsg", "���������� ȸ������ �Ǿ����ϴ�.");
			mav.setViewName("redirect:/");
			
			
			
			
		} else {
			ra.addFlashAttribute("redirectMsg", "ȸ�����Կ� �����߽��ϴ�.");
			mav.setViewName("redirect:/JoinForm");
		}
		return mav;
	}
	
	
	@RequestMapping(value = "/MemberEmailCheck")
	public @ResponseBody String MemberEmailCheck (String inputEmail) {
		
		System.out.println("회원 이메일 중복확인 ");
		
		System.out.println("입력 확인 : " + inputEmail);
		
		String checkResult = memsvc.checkEmail(inputEmail);
		
		return checkResult;
		
	}
	
	
	
}
