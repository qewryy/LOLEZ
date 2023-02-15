package com.lolez.Matchdto;

import lombok.Data;

@Data
public class ObjectiveDto {
	
	private long gameId;
	// PK지정을 위한 FK로 참조받은 gameId
	
	private int teamId;
	// PK지정을 위한 FK로 참조받은 teamId
	
	private String puuid;
	// PK지정을 위한 FK로 참조받은 puuid
	
	private String type;
	// PK지정을 위한 FK로 참조받은 type (baron, champion 등)
	
	private boolean first;
	private int first_int;
	//해당 팀이 해당 오브젝트를 최초로 달성했는지 여부를 나타냅니다.
	
	private int kills;
	// 해당 팀이 해당 오브젝트를 몇 개의 적을 처치하여 달성했는지를 나타냅니다.
	
	public int convertBooleanToInt(boolean value) {
		return value ? 1 : 0;
	}
}
