package com.lolez.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class InfoDto {

	private long gameCreation;
	private long gameDuration;
	private long gameEndTimestamp;
	private long gameId;
	private String gameMode;
	private String gameName;
	private long gameStartTimestamp;
	private String gameType;
	private String gameVersion;
	private int mapId;
	private List<ParticipantDto> participants = new ArrayList<ParticipantDto>();
	private String platformId;
	private int queueId;
	private List<TeamDto> teams = new ArrayList<TeamDto>();
	private String tournamentCode;
	
}
