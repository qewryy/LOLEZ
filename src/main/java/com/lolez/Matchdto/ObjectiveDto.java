package com.lolez.Matchdto;

import lombok.Data;

@Data
public class ObjectiveDto {
	
	private long gameId;
	private int teamId;
	private String puuid;
	private String type;
	private boolean first;
	private int first_int;
	private int kills;
	
	public int convertBooleanToInt(boolean value) {
		return value ? 1 : 0;
	}
}
