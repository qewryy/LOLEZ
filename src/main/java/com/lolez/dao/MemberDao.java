package com.lolez.dao;

import java.time.LocalDateTime;

import org.apache.ibatis.annotations.Param;
import com.lolez.dto.MemberDto;

public interface MemberDao {

	int insertMemberJoin(MemberDto joinInfo);
	
	String checkEmail(String inputEmail);
	
	MemberDto selectMemberLogin(@Param("memail")String inputMemail, @Param("mpw")String inputMpw);

	String checkNickname(@Param("inputNickname") String inputNickname);

	int updatepoint(@Param("mname") String mname);

	int updatedaily(@Param("i") int i);

	int selectdailycheck(@Param("mname") String mname);


}
