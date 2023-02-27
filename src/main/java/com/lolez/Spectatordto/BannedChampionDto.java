package com.lolez.Spectatordto;

import lombok.Data;

@Data
public class BannedChampionDto {
	
	private int pickTurn;
	private long championId;
	private long teamId;
	
	@Override
	public String toString() {
		return "BannedChampionDto [pickTurn=" + pickTurn + ", championId=" + championId + ", teamId=" + teamId + "]";
	}
	

}
