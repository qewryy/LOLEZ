package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerksDto {

	private PerkStatsDto statPerks = new PerkStatsDto();
	// 참가자가 선택한 특성 중, 기본 스탯을 증가시키는 스탯 특성에 대한 정보를 담고 있는 객체입니다. \
	// 이 객체는 "offense", "flex", "defense"의 세 가지 카테고리 중 하나를 나타내며, "perk"과 "var1", "var2", "var3" 세 가지 속성을 가지고 있습니다.
	
	private List<PerkStyleDto> styles = new ArrayList<PerkStyleDto>();
	// 참가자가 선택한 특성 중, 전체적인 플레이 스타일에 대한 정보를 담고 있는 객체입니다. 
	// 이 객체는 "description", "selections" 두 가지 속성을 가지고 있습니다.
	
}
