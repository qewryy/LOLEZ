package com.lolez.Leaguedto;

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
	private int hotStreak_int;
	private boolean veteran;
	private int veteran_int;
	private boolean freshBlood;
	private int freshBlood_int;
	private boolean inactive;
	private int inactive_int;
	private MiniSeriesDto MiniSeriesDto;
	private boolean DuoBoolean;

	public int convertBooleanToInt(boolean value) {
		return value ? 1 : 0;
	}

}
