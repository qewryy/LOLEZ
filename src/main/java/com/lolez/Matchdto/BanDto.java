package com.lolez.Matchdto;

import lombok.Data;

@Data
public class BanDto {
	
	private long gameId;
	private int teamId;
	private int championId;
	private int pickTurn;
	
}
