package com.lolez.Matchdto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class InfoDto {

	private long gameId;
	// FK로 참조받은 해당 게임의 고유 ID입니다.
	
	private long gameCreation;
	// 해당 게임이 생성된 시간입니다. Unix timestamp 형식으로 반환됩니다.
	
	private long gameDuration;
	// game_duration: 해당 게임의 지속 시간(초)입니다.
	
	private long gameEndTimestamp;
	// 해당 게임이 끝난 Unix timestamp입니다.
	
	private String gameMode;
	// 해당 게임의 게임 모드(소환사의 협곡, 칼바람, URF 등)입니다.
	
	private String gameName;
	// 해당 게임의 이름입니다. 토너먼트 매치일 경우 토너먼트 코드도 포함됩니다.
	
	private long gameStartTimestamp;
	// 해당 게임이 시작된 Unix timestamp입니다.
	
	private String gameType;
	// 해당 게임의 게임 유형(일반, 랭크, 커스텀)입니다.
	
	private String gameVersion;
	// 해당 게임의 클라이언트 버전 정보입니다.
	
	private int mapId;
	// 해당 게임의 맵 ID입니다. 소환사의 협곡은 11, 칼바람은 12 등이 있습니다.
	
	private List<ParticipantDto> participants = new ArrayList<ParticipantDto>();
	// 해당 게임에 참가한 참가자들의 정보입니다.
	
	private String platformId;
	// 해당 게임이 진행된 서버의 플랫폼 ID입니다.
	
	private int queueId;
	// queue_id: 해당 게임이 진행된 대기열 ID입니다.
	
	private List<TeamDto> teams = new ArrayList<TeamDto>();
	// 해당 게임의 팀 정보입니다. 팀 정보는 블루팀(100)과 레드팀(200)의 정보가 포함됩니다.
	
	private String tournamentCode;
	// 해당 게임의 토너먼트 코드입니다. 이 정보는 토너먼트 매치에서만 반환되며, 토너먼트 코드는 해당 토너먼트를 구분하는 데 사용됩니다. 
	// 다른 API 요청에서 사용되는 일반 게임의 gameId와는 다른 값입니다.
	
	
}
