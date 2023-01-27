package com.lolez.service;

import java.io.File;
import java.io.IOException;
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
		int insertResult = 0;
		try {
			insertResult = memdao.insertMemberJoin(joinInfo);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("������ �߻��߽��ϴ�.");
		}
		return insertResult;
	}
	
	
	public String checkEmail(String inputEmail) {
		System.out.println("Member Service : checkEmail = " + inputEmail);
		String checkEmail = memdao.checkEmail(inputEmail);
		
		String Result = "OK";
		
		if(checkEmail != null) {
			Result = "NO";
		}
		
		
		return Result; 
		
	}
	

	/*
	 * public MemberDto memberLogin_svc(String mid, String mpw) { MemberDto
	 * loginInfo = memdao.selectMemberLogin(mid, mpw); return loginInfo; }
	 * 
	 * public ArrayList<Map<String, String>> getReserveList(String loginId) {
	 * System.out.println("SERVICE ?��매내?�� 조회"); ArrayList<Map<String, String>>
	 * reserveList = memdao.selectReserveList(loginId);
	 * System.out.println(reserveList); return reserveList; }
	 * 
	 * public int reserveCancel_svc(String recode) {
	 * System.out.println("SERVICE ?���? 취소"); int deleteResult = 0; try {
	 * deleteResult = memdao.deletePayInfo(recode); deleteResult =
	 * memdao.deleteReserve(recode);
	 * 
	 * } catch (Exception e) { e.printStackTrace();
	 * System.out.println("\n?���? 취소 ?��?��"); }
	 * 
	 * return deleteResult; }
	 */

}
