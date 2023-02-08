package com.lolez.Leaguedto;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class LeagueEntryDto {
	private String summonerId;
	
	private String leagueId;
	
	private String summonerName;
	
	private String queueType;
	
	private String tier;
	
	private String rank;
	
	private int leaguePoints;
	
	private int wins;
	
	private int losses;
	
	private boolean hotStreak;
	
	private boolean veteran;
	
	private boolean freshBlood;
	private boolean inactive;
	
	private MiniSeriesDto MiniSeriesDto;
	
	public int convertBooleanToInt(boolean value) {
	    return value ? 1 : 0;
	}
	
}
