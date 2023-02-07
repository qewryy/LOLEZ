package com.lolez.dao;

import org.apache.ibatis.annotations.Param;

import com.lolez.Summonerdto.SummonerDto;

public interface SummonerDao {

	int insertsummonerinfo(SummonerDto summoner);

	String selectusername(@Param("summoneName") String summoneName);

	int updatesummonerinfo(SummonerDto summoner);

}
