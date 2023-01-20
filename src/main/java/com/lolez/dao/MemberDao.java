package com.lolez.dao;

import com.lolez.dto.MemberDto;

public interface MemberDao {

	int insertMemberJoin(MemberDto joinInfo);

	/*
	 * String selectMaxMemberCode();
	 * 
	 * MemberDto selectMemberLogin(@Param("mid")String mid, @Param("mpw")String
	 * mpw);
	 * 
	 * ArrayList<Map<String, String>> selectReserveList(@Param("remid") String
	 * loginId);
	 * 
	 * int deleteReserve(String recode);
	 * 
	 * int deletePayInfo(String recode);
	 */

}
