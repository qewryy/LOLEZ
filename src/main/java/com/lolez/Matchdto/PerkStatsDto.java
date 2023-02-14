package com.lolez.Matchdto;

import lombok.Data;

@Data
public class PerkStatsDto {

	private String puuid;
	private long gameId;
	private int defense; 
	private int flex;
	private int offense;
	
}
