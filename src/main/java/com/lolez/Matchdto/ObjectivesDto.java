package com.lolez.Matchdto;

import lombok.Data;

@Data
public class ObjectivesDto {

	private ObjectiveDto baron = new ObjectiveDto();
	// 해당 팀이 바론을 처치한 횟수입니다.
	
	private ObjectiveDto champion = new ObjectiveDto();
	// 해당 팀이 상대 챔피언을 처치한 횟수입니다.
	
	private ObjectiveDto dragon = new ObjectiveDto();
	// 해당 팀이 용을 처치한 횟수입니다.
	
	private ObjectiveDto inhibitor = new ObjectiveDto();
	// 해당 팀이 억제기를 파괴한 횟수입니다.
	
	private ObjectiveDto riftHerald = new ObjectiveDto();
	// 해당 팀이 전령을 처치한 횟수입니다.
	
	private ObjectiveDto tower = new ObjectiveDto();
	// 해당 팀이 포탑을 파괴한 횟수입니다.

}
