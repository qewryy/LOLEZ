package com.lolez.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lolez.Leaguedto.LeagueEntryDto;
import com.lolez.Leaguedto.MiniSeriesDto;

public interface LeagueDao {

	LeagueEntryDto selectleaguedata(@Param("leagueId") String leagueId,@Param("leagueQueue")  String leagueQueue);

	int updateminidata(MiniSeriesDto miniSeriesDto);

	int deleteminidata(@Param("id") String id);

	int insertminidata(MiniSeriesDto miniSeriesDto);

	int insertleaguedata(LeagueEntryDto leagueEntryDto);

	int updateleaguedata(LeagueEntryDto leagueEntryDto);
	

}
