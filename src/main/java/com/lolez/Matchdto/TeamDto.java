package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class TeamDto {
	
	private long gameId;
	// PK지정을 위한 FK로 참조받은 gameId
	
	private int teamId;
	// PK지정을 위한 FK로 참조받은 teamId
	
	private List<BanDto> bans = new ArrayList<BanDto>();
	// 해당 팀이 밴한 챔피언 목록입니다.
	
	private ObjectivesDto objectives = new ObjectivesDto();
	// 해당 팀이 달성한 오브젝트(용, 바론, 타워 등) 정보입니다.
	
	private boolean win;
	// 팀이 이겼는지 여부를 나타냅니다. 이겼으면 true, 졌으면 false입니다. ? 이거 왜 안들어가냐 다시 봐야겠네
	
}
