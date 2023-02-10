package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerksDto {

	private PerkStatsDto statPerks = new PerkStatsDto();
	private List<PerkStyleDto> styles = new ArrayList<PerkStyleDto>();
	
}
