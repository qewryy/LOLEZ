package com.lolez.Matchdto;

import lombok.Data;

@Data
public class ParticipantDto {
	
	private long gameid;
	// 해당 게임의 고유 ID입니다. 이 ID는 다른 API 요청에서도 사용됩니다.
	
	private String puuid;
	// PK 설정을 위해 임의로 넣어놓은 값으로 해당 참가자의 puuid 입니다.
	
	private int assists;
	// 해당 참가자가 게임 중에 동료 챔피언을 지원한 횟수입니다.
	
	private int baronKills;
	// 해당 참가자가 바론을 처치한 횟수입니다.
	
	private int bountyLevel;
	// 해당 참가자의 현재 바운티 레벨입니다.
	
	private int champExperience;
	// 해당 참가자가 챔피언으로부터 얻은 경험치입니다.
	
	private int champLevel;
	// 해당 참가자의 챔피언 레벨입니다.
	
	private int championId;
	// 해당 참가자가 선택한 챔피언의 ID입니다.
	
	private String championName;
	// 해당 참가자가 선택한 챔피언의 이름입니다.
	
	private int championTransform;
	// 해당 참가자가 선택한 챔피언의 변신 상태입니다.
	// 해당 컬럼은 케인의 그림자 암살자 or 다르킨을 나타내는 컬럼입니다.
	
	private int consumablesPurchased;
	// 해당 참가자가 구매한 소비 아이템 수입니다. (와드 갯수? 물약 포함인진 모름)
	
	private int damageDealtToBuildings;
	// 해당 참가자가 건물에 입힌 총 피해량입니다.
	
	private int damageDealtToObjectives;
	// 해당 참가자가 오브젝트에 입힌 총 피해량입니다.
	
	private int damageDealtToTurrets;
	// 해당 참가자가 포탑에 입힌 총 피해량입니다.
	
	private int damageSelfMitigated;
	// 해당 참가자가 스스로 방어한 총 피해량입니다.
	
	private int deaths;
	// 해당 참가자가 게임 중에 죽은 횟수입니다.
	
	private int detectorWardsPlaced;
	// 해당 참가자가 설치한 시야 와드 수입니다.
	
	private int doubleKills;
	// 해당 참가자가 게임 중에 기록한 더블 처치 횟수입니다.
	
	private int dragonKills;
	// 해당 참가자가 용을 처치한 횟수입니다.
	
	private boolean firstBloodAssist;
	// 해당 참가자가 첫 번째 킬에서 어시스트한 경우 true입니다.
	
	private boolean firstBloodKill;
	// 해당 참가자가 첫 번째 킬을 기록한 경우 true입니다.
	
	private boolean firstTowerAssist;
	// 해당 참가자가 첫 번째 타워 파괴에서 어시스트한 경우 true입니다.
	
	private boolean firstTowerKill;
	// 당 참가자가 첫 번째 타워를 파괴한 경우 true입니다.
	
	private boolean gameEndedInEarlySurrender;
	// 해당 참가자가 서렌한 경우 true입니다.
	
	private boolean gameEndedInSurrender;
	// 해당 참가자가 서렌을 한 경우, true로 설정됩니다. 서렌을 하지 않은 경우, false입니다.
	
	private int goldEarned;
	// 해당 참가자가 게임에서 획득한 총 골드량입니다.
	
	private int goldSpent;
	// 해당 참가자가 게임에서 사용한 총 골드량입니다.
	
	private String individualPosition;
	// 해당 참가자의 개별 포지션입니다. (TOP, JUNGLE, MIDDLE, BOTTOM, UTILITY)
	
	private int inhibitorKills;
	// 해당 참가자가 억제기를 파괴한 횟수입니다.
	
	private int inhibitorTakedowns;
	// 해당 참가자가 억제기를 파괴하거나, 억제기가 파괴된 후에 억제기가 파괴된 상황에서 다른 참가자가 킬을 기록한 경우에 해당합니다.
	
	private int inhibitorsLost;
	// 해당 참가자의 팀이 상대 팀에게 파괴당한 억제기 수입니다.
	
	private int item0;
	private int item1;
	private int item2;
	private int item3;
	private int item4;
	private int item5;
	private int item6;
	// 해당 참가자가 게임 중에 구매한 아이템의 ID입니다. 각각의 열은 아이템 슬롯을 나타내며, 0번 슬롯부터 6번 슬롯까지 순서대로 나열됩니다.
	
	private int itemsPurchased;
	// 해당 참가자가 게임 중 구매한 아이템 목록입니다.
	
	private int killingSprees;
	// 해당 참가자가 게임 중에 기록한 연속 처치 횟수입니다.
	
	private int kills;
	// 해당 참가자가 게임 중에 적을 처치한 횟수입니다.
	
	private String lane;
	// 해당 참가자의 라인 종류입니다. TOP, JUNGLE, MIDDLE, BOTTOM 중 하나입니다.
	
	private int largestCriticalStrike;
	// 해당 참가자가 게임 중에 기록한 최대 치명타 피해량입니다.
	
	private int largestKillingSpree;
	// 해당 참가자가 게임 중에 기록한 최대 연속 처치 횟수입니다.
	
	private int largestMultiKill;
	// 해당 참가자가 게임 중에 기록한 최대 다중 처치 횟수입니다.
	
	private int longestTimeSpentLiving;
	// 해당 참가자가 게임 중에 기록한 최대 생존 시간입니다.
	
	private int magicDamageDealt;
	// 해당 참가자가 게임 중에 가한 마법 피해량입니다.
	
	private int magicDamageDealtToChampions;
	// 해당 참가자가 게임 중에 챔피언에게 가한 마법 피해량입니다.
	
	private int magicDamageTaken;
	// 해당 참가자가 받은 마법 피해량입니다.
	
	private int neutralMinionsKilled;
	// 해당 참가자가 처치한 중립 몬스터 수입니다.
	
	private int nexusKills;
	// 해당 참가자가 파괴한 넥서스의 수입니다.
	
	private int nexusTakedowns;
	// 해당 참가자가 넥서스를 파괴하거나 넥서스를 파괴한 팀원에게 어시스트를 한 횟수입니다.
	
	private int nexusLost;
	// 해당 참가자가 속한 팀이 넥서스를 잃은 횟수입니다.
	
	private int objectivesStolen;
	// 해당 참가자가 적 팀이 점령한 오브젝트(드래곤, 바론 등)를 스틸한 횟수입니다.
	
	private int objectivesStolenAssists;
	// 해당 참가자가 적 팀이 점령한 오브젝트를 스틸하고 팀원이 그 오브젝트를 처리하는 데 어시스트한 횟수입니다.
	
	private int participantId;
	// 해당 참가자의 고유 ID입니다.
	
	private int pentaKills;
	// 해당 참가자가 게임 중에 기록한 펜타 처치 횟수입니다.
	
	private PerksDto perks = new PerksDto();
	// 해당 참가자의 룬 및 이에 따른 보조 주문 정보입니다.
	
	private int physicalDamageDealt;
	// 해당 참가자가 게임 중에 가한 물리 피해량입니다.
	
	private int physicalDamageDealtToChampions;
	// 해당 참가자가 게임 중에 챔피언에게 가한 물리 피해량입니다.
	
	private int physicalDamageTaken;
	// 해당 참가자가 받은 물리 피해량입니다.
	
	private int profileIcon;
	//	해당 참가자의 프로필 아이콘 ID입니다.
	
	private int quadraKills;
	// 해당 참가자가 게임 중에 기록한 쿼드라 처치 횟수입니다.

	private String riotIdName;
	// 해당 참가자의 Riot ID 이름입니다.
	
	private String riotIdTagline;
	// 해당 참가자의 Riot ID 태그라인입니다.
	
	private String role;
	// 해당 참가자의 역할입니다. SOLO, DUO, CARRY, SUPPORT 중 하나입니다.
	
	private int sightWardsBoughtInGame;
	// 해당 참가자가 구매한 시야 와드 수입니다.
	
	private int spell1Casts;
	// 	해당 참가자가 선택한 주문의 첫 번째 스펠 ID입니다.
	
	private int spell2Casts;
	// 	해당 참가자가 선택한 주문의 두 번째 스펠 ID입니다.
	
	private int spell3Casts;
	// 	해당 참가자가 선택한 주문의 세 번째 스펠 ID입니다. ( 세, 네번째는 왜 존재하는지 잘 모름 다시 확인해봐야됨 )
	
	private int spell4Casts;
	// 	해당 참가자가 선택한 주문의 네 번째 스펠 ID입니다. ( 세, 네번째는 왜 존재하는지 잘 모름 다시 확인해봐야됨 )
	
	private int summoner1Casts;
	// 해당 참가자가 사용한 1번 소환사 주문 횟수입니다.
	
	private int summoner1Id;
	// 해당 참가자의 1번 소환사 주문 ID입니다.
	
	private int summoner2Casts;
	// 해당 참가자가 사용한 2번 소환사 주문 횟수입니다.
	
	private int summoner2Id;
	// 해당 참가자의 2번 소환사 주문 ID입니다.
	
	private String summonerId;
	// 해당 참가자의 소환사 ID입니다.
	
	private int summonerLevel;
	// 해당 참가자의 소환사 레벨입니다.
	
	private String summonerName;
	// 해당 참가자의 소환사 이름입니다.
	
	private boolean teamEarlySurrendered;
	// 해당 참가자의 팀이 조기 항복한 여부입니다.
	
	private int teamId;
	// 해당 참가자가 속한 팀의 ID입니다. 블루팀(100)과 레드팀(200)가 있습니다.
	
	private String teamPosition;
	// 해당 참가자가 선택한 포지션입니다. "TOP", "JUNGLE", "MIDDLE", "BOTTOM", "UTILITY" 중 하나일 수 있습니다.
	
	private int timeCCingOthers;
	// 해당 참가자가 다른 참가자를 CC(기절, 둔화 등)시킨 시간입니다.
	
	private int timePlayed;
	// 해당 참가자의 게임 플레이 시간입니다.
	
	private int totalDamageDealt;
	// 해당 참가자가 게임 중에 가한 총 피해량입니다.
	
	private int totalDamageDealtToChampions;
	// 해당 참가자가 게임 중에 챔피언에게 가한 총 피해량입니다.
	
	private int totalDamageShieldedOnTeammates;
	// 해당 참가자가 팀원에게 적용한 쉴드 양입니다.
	
	private int totalDamageTaken;
	// 게임에서 총 누적으로 받은 피해량입니다.
	
	private int totalHeal;
	// 게임에서 총 회복한 체력량입니다.
	
	private int totalHealsOnTeammates;
	// 해당 참가자가 팀원들에게 회복시킨 총 체력량입니다.
	
	private int totalMinionsKilled;
	// 해당 참가자가 적 미니언을 총 몇 마리 처치했는지를 나타냅니다.
	
	private int totalTimeCCDealt;
	// 해당 참가자가 상대에게 CC(이하 CC)를 가한 총 시간(초)입니다.
	
	private int totalTimeSpentDead;
	// 해당 참가자가 사망하여 부활까지 걸린 총 시간(초)입니다.
	
	private int totalUnitsHealed;
	// 해당 참가자가 아군 유닛(챔피언, 미니언, 와드 등)에게 회복시킨 총 체력량입니다.
	
	private int tripleKills;
	// 해당 참가자가 게임 중에 기록한 트리플 처치 횟수입니다.
	
	private int trueDamageDealt;
	// 해당 참가자가 게임 중에 가한 고정 피해량입니다.
	
	private int trueDamageDealtToChampions;
	// 해당 참가자가 게임 중에 챔피언에게 가한 고정 피해량입니다.
	
	private int trueDamageTaken;
	// 해당 참가자가 받은 총 진실 데미지입니다.
	
	private int turretKills;
	// 해당 참가자가 파괴한 포탑의 수입니다.
	
	private int turretTakedowns;
	// 해당 참가자가 파괴한 포탑과 함께 상대팀 챔피언도 처치한 수입니다.
	
	private int turretsLost;
	// 해당 참가자의 팀이 파괴한 포탑 수입니다.
	
	private int unrealKills;
	// 해당 참가자가 게임 중에 기록한 언리얼 처치 횟수입니다. (?)
	
	private int visionScore;
	// 해당 참가자가 게임에서 기여한 시야 점수입니다. 시야 점수는 와드 설치, 제거, 적 시야 제한 등을 통해 얻을 수 있습니다.
	
	private int visionWardsBoughtInGame;
	// 해당 참가자가 게임에서 구매한 제어 와드 수입니다.
	
	private int wardsKilled;
	// 해당 참가자가 파괴한 적 와드 수입니다.
	
	private int wardsPlaced;
	// 해당 참가자가 설치한 총 와드 수입니다.
	
	private boolean win;
	// 해당 참가자의 승패 여부를 나타내는 값입니다.
	
}
