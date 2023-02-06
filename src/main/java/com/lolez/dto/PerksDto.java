package com.lolez.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerksDto {

	private PerkStatsDto statPerks;
	private List<PerkStyleDto> styles = new ArrayList<PerkStyleDto>();
	
}
