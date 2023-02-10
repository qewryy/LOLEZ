package com.lolez.dao;

import org.apache.ibatis.annotations.Param;

import com.lolez.Summonerdto.SummonerDto;

public interface SummonerDao {

	int insertsummonerinfo(SummonerDto summoner);

	SummonerDto selectusername(@Param("id") String id);

	int updatesummonerinfo(SummonerDto summoner);

}
