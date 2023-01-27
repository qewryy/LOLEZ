package com.lolez.dao;


import org.apache.ibatis.annotations.Select;

import org.apache.ibatis.annotations.Param;


import com.lolez.dto.MemberDto;

public interface MemberDao {

	int insertMemberJoin(MemberDto joinInfo);
	
	
	@Select("SELECT * FROM MEMBERS WHERE MEMAIL= #{inputEmail}")
	String checkEmail(String inputEmail);
	
	
	

	MemberDto selectMemberLogin(@Param("mid")String mid, @Param("mpw")String mpw);

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
