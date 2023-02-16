package com.lolez.Matchdto;

import lombok.Data;

@Data
public class PerkStyleSelectionDto {

	private String puuid;
	// PK지정을 위한 FK로 참조받은 puuid
	
	private long gameId;
	// PK지정을 위한 FK로 참조받은 gameId
	
	private String description;
	// PK지정을 위한 FK로 참조받은 description
	
	private int perk;
	// 선택한 룬의 ID입니다.
	
	private int var1;
	// 룬에 따라 다르게 사용되는 값 중 첫 번째 값입니다. 대부분 룬에는 이 값이 있지만, 일부 룬은 이 값을 사용하지 않습니다.
	
	private int var2;
	// 룬에 따라 다르게 사용되는 값 중 두 번째 값입니다. 대부분 룬에는 이 값이 있지만, 일부 룬은 이 값을 사용하지 않습니다.
	
	private int var3;
	// 룬에 따라 다르게 사용되는 값 중 세 번째 값입니다. 대부분 룬에는 이 값이 있지만, 일부 룬은 이 값을 사용하지 않습니다.
	
}
