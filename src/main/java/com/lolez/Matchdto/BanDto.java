package com.lolez.Matchdto;

import lombok.Data;

@Data
public class BanDto {
	
	private long gameId;
	// PK지정을 위한 FK로 참조받은 gameId
	
	private int teamId;
	// PK지정을 위한 FK로 참조받은 teamId
	
	private String puuid;
	// PK지정을 위한 FK로 참조받은 puuid
	
	private int championId;
	// 밴된 챔피언의 ID
	
	private int pickTurn;
	// 해당 밴이 일어난 순서
	
}
