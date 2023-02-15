package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class MetadataDto {

	private String dataVersion;
	// 해당 데이터가 업데이트된 버전 정보입니다.
	
	private String matchId;
	// 해당 게임의 고유 ID입니다.
	
	private List<String> participants = new ArrayList<String>();
	// 해당 게임에 참가한 참가자들의 고유 ID 목록입니다.
	
	private String participants_String;
	// 참가자들의 고유 ID 목록을 DB에 넣기위해 String으로 변환한 값입니다.
	

	
}	
