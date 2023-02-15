package com.lolez.Summonerdto;

import lombok.Data;

@Data
public class SummonerDto {

	private String id;
	// id: 소환사의 고유 식별자입니다. 이 ID는 해당 소환사의 랭크 정보 등 다른 API 요청에서도 사용됩니다.
	
	private String puuid;
	// puuid: 소환사의 고유 PUUID(Permanent Universally Unique Identifier)입니다. 
	// 이 PUUID는 해당 소환사의 랭크 정보 등 다른 API 요청에서도 사용됩니다.
	
	private String accountId;
	// accountId: 소환사의 계정 ID입니다. 이 ID는 해당 소환사가 속한 계정의 게임 플레이 관련 정보를 가져올 때 사용됩니다.
	
	private int profileIconId;
	// profileIconId: 소환사의 프로필 아이콘 ID입니다. 이 ID는 해당 소환사가 게임 내에서 사용하는 프로필 아이콘을 식별하는 데 사용됩니다.
	private long revisionDate;
	// revisionDate: 소환사 정보 갱신 시각입니다. 이 시각은 밀리초 단위로 나타납니다. 
	// 이 정보를 통해 소환사 정보가 최근에 갱신되었는지 확인할 수 있습니다.
	
	private String name;
	// name: 소환사의 이름입니다. 이 이름은 소환사가 게임 내에서 사용하는 이름입니다.
	
	private long summonerLevel;
	// summonerLevel: 소환사의 레벨입니다. 이 정보를 통해 해당 소환사가 얼마나 게임을 즐기고 있는지 확인할 수 있습니다.
	
	private String message;
	// 오류 메세지
	
	private int status_code;
	// 오류 코드
	
}
