package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class TeamDto {
	
	private List<BanDto> bans = new ArrayList<BanDto>();
	private ObjectivesDto objectives;
	private int teamId;
	private boolean win;
	
}
