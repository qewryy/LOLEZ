package com.lolez.service;

import java.io.File;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lolez.dao.MemberDao;
import com.lolez.dto.MemberDto;

@Service
public class MemberService {

	@Autowired
	private MemberDao memdao;

	public int memberJoin_svc(MemberDto joinInfo) throws IOException {
		System.out.println("MemberService memberJoin_svc() 실행");
		int insertResult = 0;
		try {
			insertResult = memdao.insertMemberJoin(joinInfo);
		} catch (Exception e) {
			e.printStackTrace();


			System.out.println("회원가입 실패");

		}
		return insertResult;
	}
	
	
	public String checkEmail(String inputEmail) {
		System.out.println("MemberService checkEmail() 실행");
		System.out.println("Member Service : checkEmail = " + inputEmail);
		String checkEmail = memdao.checkEmail(inputEmail);
		
		String Result = "OK";
		
		if(checkEmail != null) {
			Result = "NO";
		}
		
		
		return Result; 
		
	}
	
	public String checkNickname(String inputNickname) {
		System.out.println("MemberService checkNickname() 실행");
		System.out.println("Member Service : checkNickname = " + inputNickname);
		String checkEmail = memdao.checkNickname(inputNickname);
		
		String Result = "OK";
		
		if(checkEmail != null) {
			Result = "NO";
		}
		
		
		return Result;
	}

	public MemberDto memberLogin(String inputMemail, String inputMpw) {
		System.out.println("MemberService memberLogin() 실행");
		MemberDto loginInfo = memdao.selectMemberLogin(inputMemail, inputMpw); 
		return loginInfo;
	}


	public int updatepoint(String mname) {
		System.out.println("MemberService updatepoint() 실행");
		int ur = memdao.updatepoint(mname);
		if(ur != 1) {
			System.out.println("일일 출석 포인트 지급에 오류가 발생했습니다.");
		}
		return ur;
	}


	public int updatedaily(int i) {
		System.out.println("MemberService updatedaily() 실행");
		int ur = memdao.updatedaily(i);
		if(ur != 1) {
			System.out.println("일일 출석 초기화에 오류가 발생했습니다.");
		}
		return ur;
	}


	public int selectdailycheck(String mname) {
		System.out.println("MemberService selectdailycheck() 실행");
		int sr = memdao.selectdailycheck(mname);
		return sr;
	}

}
