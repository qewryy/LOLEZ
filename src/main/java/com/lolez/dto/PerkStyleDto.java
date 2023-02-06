package com.lolez.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class PerkStyleDto {
	
	private String description;
	private List<PerkStyleSelectionDto> selections = new ArrayList<PerkStyleSelectionDto>();
	private int style;
	
}
