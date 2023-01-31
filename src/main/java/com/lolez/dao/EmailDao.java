package com.lolez.dao;

import org.apache.ibatis.annotations.Param;

import com.lolez.dto.EmailDto;

public interface EmailDao {

	int insertEmailProve(@Param("email")String email,@Param("token") String token);

	EmailDto ProveCheck(@Param("email")String email);

}
