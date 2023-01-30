package com.lolez.dao;


import org.apache.ibatis.annotations.Select;

import org.apache.ibatis.annotations.Param;


import com.lolez.dto.MemberDto;

public interface MemberDao {

	int insertMemberJoin(MemberDto joinInfo);
	
	String checkEmail(String inputEmail);
	
	MemberDto selectMemberLogin(@Param("memail")String inputMemail, @Param("mpw")String inputMpw);

	String checkNickname(String inputNickname);

	/*
	 * String selectMaxMemberCode();
	 * 
	 * 
	 * ArrayList<Map<String, String>> selectReserveList(@Param("remid") String
	 * loginId);
	 * 
	 * int deleteReserve(String recode);
	 * 
	 * int deletePayInfo(String recode);
	 */

}
