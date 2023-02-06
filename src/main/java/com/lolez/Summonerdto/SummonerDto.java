package com.lolez.Summonerdto;

import lombok.Data;

@Data
public class SummonerDto {

	private String id;
	private String puuid;
	private String accountId;
	private int profileIconId;
	private long revisionDate;
	private String name;
	private long summonerLevel;
	
}
