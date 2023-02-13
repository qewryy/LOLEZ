package com.lolez.Matchdto;

import lombok.Data;

@Data
public class ObjectivesDto {

	private ObjectiveDto baron = new ObjectiveDto();
	private ObjectiveDto champion = new ObjectiveDto();
	private ObjectiveDto dragon = new ObjectiveDto();
	private ObjectiveDto inhibitor = new ObjectiveDto();
	private ObjectiveDto riftHerald = new ObjectiveDto();
	private ObjectiveDto tower = new ObjectiveDto();

}
