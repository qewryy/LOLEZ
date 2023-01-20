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
			System.out.println("¿À·ù°¡ ¹ß»ýÇß½À´Ï´Ù.");
		}
		return insertResult;
	}

	/*
	 * public MemberDto memberLogin_svc(String mid, String mpw) { MemberDto
	 * loginInfo = memdao.selectMemberLogin(mid, mpw); return loginInfo; }
	 * 
	 * public ArrayList<Map<String, String>> getReserveList(String loginId) {
	 * System.out.println("SERVICE ?˜ˆë§¤ë‚´?—­ ì¡°íšŒ"); ArrayList<Map<String, String>>
	 * reserveList = memdao.selectReserveList(loginId);
	 * System.out.println(reserveList); return reserveList; }
	 * 
	 * public int reserveCancel_svc(String recode) {
	 * System.out.println("SERVICE ?˜ˆë§? ì·¨ì†Œ"); int deleteResult = 0; try {
	 * deleteResult = memdao.deletePayInfo(recode); deleteResult =
	 * memdao.deleteReserve(recode);
	 * 
	 * } catch (Exception e) { e.printStackTrace();
	 * System.out.println("\n?˜ˆë§? ì·¨ì†Œ ?˜ˆ?™¸"); }
	 * 
	 * return deleteResult; }
	 */

}
