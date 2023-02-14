package com.lolez.Matchdto;

import lombok.Data;

@Data
public class ParticipantDto {
	
	private long gameid;
	private String userpuuid;
	private int assists;
	private int baronKills;
	private int bountyLevel;
	private int champExperience;
	private int champLevel;
	private int championId;
	private String championName;
	private int championTransform;
	private int consumablesPurchased;
	private int damageDealtToBuildings;
	private int damageDealtToObjectives;
	private int damageDealtToTurrets;
	private int damageSelfMitigated;
	private int deaths;
	private int detectorWardsPlaced;
	private int doubleKills;
	private int dragonKills;
	private boolean firstBloodAssist;
	private int firstBloodAssist_int;
	private boolean firstBloodKill;
	private int firstBloodKill_int;
	private boolean firstTowerAssist;
	private int firstTowerAssist_int;
	private boolean firstTowerKill;
	private int firstTowerKill_int;
	private boolean gameEndedInEarlySurrender;
	private int gameEndedInEarlySurrender_int;
	private boolean gameEndedInSurrender;
	private int gameEndedInSurrender_int;
	private int goldEarned;
	private int goldSpent;
	private String individualPosition;
	private int inhibitorKills;
	private int inhibitorTakedowns;
	private int inhibitorsLost;
	private int item0;
	private int item1;
	private int item2;
	private int item3;
	private int item4;
	private int item5;
	private int item6;
	private int itemsPurchased;
	private int killingSprees;
	private int kills;
	private String lane;
	private int largestCriticalStrike;
	private int largestKillingSpree;
	private int largestMultiKill;
	private int longestTimeSpentLiving;
	private int magicDamageDealt;
	private int magicDamageDealtToChampions;
	private int magicDamageTaken;
	private int neutralMinionsKilled;
	private int nexusKills;
	private int nexusTakedowns;
	private int nexusLost;
	private int objectivesStolen;
	private int objectivesStolenAssists;
	private int participantId;
	private int pentaKills;
	private PerksDto perks = new PerksDto();
	private int physicalDamageDealt;
	private int physicalDamageDealtToChampions;
	private int physicalDamageTaken;
	private int profileIcon;
	private String puuid;
	private int quadraKills;
	private String riotIdName;
	private String riotIdTagline;
	private String role;
	private int sightWardsBoughtInGame;
	private int spell1Casts;
	private int spell2Casts;
	private int spell3Casts;
	private int spell4Casts;
	private int summoner1Casts;
	private int summoner1Id;
	private int summoner2Casts;
	private int summoner2Id;
	private String summonerId;
	private int summonerLevel;
	private String summonerName;
	private boolean teamEarlySurrendered;
	private int teamEarlySurrendered_int;
	private int teamId;
	private String teamPosition;
	private int timeCCingOthers;
	private int timePlayed;
	private int totalDamageDealt;
	private int totalDamageDealtToChampions;
	private int totalDamageShieldedOnTeammates;
	private int totalDamageTaken;
	private int totalHeal;
	private int totalHealsOnTeammates;
	private int totalMinionsKilled;
	private int totalTimeCCDealt;
	private int totalTimeSpentDead;
	private int totalUnitsHealed;
	private int tripleKills;
	private int trueDamageDealt;
	private int trueDamageDealtToChampions;
	private int trueDamageTaken;
	private int turretKills;
	private int turretTakedowns;
	private int turretsLost;
	private int unrealKills;
	private int visionScore;
	private int visionWardsBoughtInGame;
	private int wardsKilled;
	private int wardsPlaced;
	private boolean win;
	private int win_int;
	
	public int convertBooleanToInt(boolean value) {
		return value ? 1 : 0;
	}
	
}