package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class MetadataDto {

	private String dataVersion;
	private String matchId;
	private List<String> participants = new ArrayList<String>();
	private String participants_String;
	
	

	
}	
