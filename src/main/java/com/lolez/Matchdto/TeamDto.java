package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class TeamDto {
	
	private long gameId;
	private int teamId;
	private List<BanDto> bans = new ArrayList<BanDto>();
	private ObjectivesDto objectives = new ObjectivesDto();
	private boolean win;
	
}
