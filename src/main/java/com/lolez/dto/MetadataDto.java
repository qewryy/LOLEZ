package com.lolez.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class MetadataDto {

	private String dataVersion;
	private String matchId;
	private List<String> participants = new ArrayList<String>();
	
}
