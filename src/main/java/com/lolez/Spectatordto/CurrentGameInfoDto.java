package com.lolez.Spectatordto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class CurrentGameInfoDto {

	private String userid;
	private String username;
	private String userteam;
	private long gameId;
	private String gameType;
	private long gameStartTime;
	private long mapId;
	private long gameLength;
	private String platformId;
	private String gameMode;
	private List<BannedChampionDto> bannedChampions = new ArrayList<BannedChampionDto>();
	private long gameQueueConfigId;
	private ObserverDto observers = new ObserverDto();
	private List<CurrentGameParticipantDto> participants = new ArrayList<CurrentGameParticipantDto>();
	
	@Override
	public String toString() {
		return "CurrentGameInfoDto [gameId=" + gameId + ", gameType=" + gameType + ", gameStartTime=" + gameStartTime
				+ ", mapId=" + mapId + ", gameLength=" + gameLength + ", platformId=" + platformId + ", gameMode="
				+ gameMode + ", bannedChampions=" + bannedChampions + ", gameQueueConfigId=" + gameQueueConfigId
				+ ", observers=" + observers + ", participants=" + participants + "]";
	}
	
	
	
}
