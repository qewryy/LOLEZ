package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerkStyleDto {
	
	private String perk_style_id;
	private long gameId;
	private String description;
	private int style;
	private List<PerkStyleSelectionDto> selections = new ArrayList<PerkStyleSelectionDto>();
	
}
