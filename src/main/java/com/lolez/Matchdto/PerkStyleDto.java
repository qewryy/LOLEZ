package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerkStyleDto {
	
	private String puuid;
	// PK지정을 위한 FK로 참조받은 puuid
	
	private long gameId;
	// PK지정을 위한 FK로 참조받은 gameId
	
	private String description;
	// 룬 스타일의 설명입니다.
	
	private int style;
	// 룬 스타일의 ID입니다.
	
	private List<PerkStyleSelectionDto> selections = new ArrayList<PerkStyleSelectionDto>();
	// 참가자가 선택한 룬에 대한 정보입니다. selections는 선택한 룬 트리의 순서대로 배열로 표시되며, 각 룬 트리는 해당 트리에서 선택한 룬 ID와 해당 룬의 설명을 포함합니다.
	
}
