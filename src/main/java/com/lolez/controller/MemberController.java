package com.lolez.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

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
	private HttpSession session;
	
	@Autowired
	private MemberService memsvc;
	
	@RequestMapping(value = "/EmailAuthentication")
	public ModelAndView memberJoinForm(String email) {

		System.out.println("인증대기창 페이지 이동 요청");
		System.out.println("인증요청 이메일 : " + email);
		

		ModelAndView mav = new ModelAndView();
		mav.addObject("memberEmail", email);
		
		mav.setViewName("Member/EmailAuthentication");
		return mav;
	}
	
	@RequestMapping(value = "/done")
	public ModelAndView done( ) {

		System.out.println("회원가입 완료 안내 페이지 요청");

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("Member/done");
		return mav;
	}
	
	
	@RequestMapping(value = "/JoinFormEmail")
	public ModelAndView memberJoinFormEmail() {

		System.out.println("회원가입 이메일 인증 페이지 요청");

		ModelAndView mav = new ModelAndView();
		mav.setViewName("Member/JoinFormEmail");
		return mav;
	}

	@RequestMapping(value = "/LoginForm")
	public ModelAndView LoginForm() {


		System.out.println("로그인 페이지 이동 요청");

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
			ra.addFlashAttribute("redirectMsg", "회원가입 되었습니다.");

			mav.setViewName("redirect:/");
			
			
			
			
		} else {


			ra.addFlashAttribute("redirectMsg", "회원가입에 실패했습니다.");

			mav.setViewName("redirect:/JoinForm");
		}
		return mav;
	}
	

	
	@RequestMapping(value = "/MemberEmailCheck")
	public @ResponseBody String MemberEmailCheck (String inputEmail) {
		
		System.out.println("회원 이메일 중복확인 ");
		
		System.out.println("이메일 입력 확인 : " + inputEmail);
		
		String checkResult = memsvc.checkEmail(inputEmail);
		
		return checkResult;
		
	}
	

	@RequestMapping(value = "/MemberNicknameCheck")
	public @ResponseBody String MemberNicknameCheck (String inputNickname) {
		
		System.out.println("회원 닉네임 중복확인 ");
		
		System.out.println("닉네임 입력 확인 : " + inputNickname);
		
		String checkResult = memsvc.checkNickname(inputNickname);
		
		return checkResult;
		
	}
	
	

	@RequestMapping(value = "/memberLogin")
	public ModelAndView memberLogin(String inputMemail, String inputMpw) {
		System.out.println("로그인 요청");
		ModelAndView mav = new ModelAndView();
		//1. 로그인 페이지에서 전송한 아이디, 비밀번호 확인
		System.out.println("입력한 이메일 : " + inputMemail);
		System.out.println("입력한 비밀번호 : " + inputMpw);
		
		//2. 입력한 아이디, 비밀번호로 회원정보 조회( 아이디(mid) )
		MemberDto loginInfo = memsvc.memberLogin(inputMemail, inputMpw);
		if(loginInfo == null) { 
			// 조회되는 회원정보가 없을 경우
			System.out.println("로그인 실패");
			
			// 로그인 페이지 이동
			mav.setViewName("redirect:/memberLoginForm");
			
		} else { 
			// 조회되는 회원정보가 있을 경우
			System.out.println("로그인 성공");
			
			//1. 세션에 로그인 정보 저장(MemberDto loginInfo >> [ memail ] )
			session.setAttribute("loginNickname", loginInfo.getMname());
			
			//2. 메인페이지 이동
			mav.setViewName("redirect:/");
		}
		return mav;
	}

}
