package com.lolez.dao;

import org.apache.ibatis.annotations.Param;

import com.lolez.Matchdto.BanDto;
import com.lolez.Matchdto.InfoDto;
import com.lolez.Matchdto.MetadataDto;
import com.lolez.Matchdto.ObjectiveDto;
import com.lolez.Matchdto.ObjectivesDto;
import com.lolez.Matchdto.ParticipantDto;
import com.lolez.Matchdto.PerkStatsDto;
import com.lolez.Matchdto.PerkStyleDto;
import com.lolez.Matchdto.PerkStyleSelectionDto;
import com.lolez.Matchdto.TeamDto;

public interface MatchDao {

	String selectmatchId(@Param("matchId") String matchId);

	int insertmetadata(MetadataDto metadata);

	int insertinfo(InfoDto info);

	int insertparticipant(ParticipantDto participantDto);

	int insertstatperks(PerkStatsDto statPerks);

	int insertperkstyle(PerkStyleDto perkStyleDto);

	int insertperkstyleselect(PerkStyleSelectionDto perkStyleSelectionDto);

	int insertteam(TeamDto teamDto);

	int insertban(BanDto banDto);

	int insertObjectives(ObjectiveDto objective);

}
