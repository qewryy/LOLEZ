package com.lolez.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lolez.Matchdto.InfoDto;
import com.lolez.Matchdto.MetadataDto;
import com.lolez.Matchdto.ParticipantDto;

public interface MatchDao {

	String selectmatchId(@Param("matchId") String matchId);

	int insertmetadata(MetadataDto metadata);

	int insertinfo(InfoDto info);

	int insertparticipant(ParticipantDto participantDto);

}
