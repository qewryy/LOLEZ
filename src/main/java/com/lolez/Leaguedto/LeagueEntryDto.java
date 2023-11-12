package com.lolez.Leaguedto;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class LeagueEntryDto {
	
	private String summonerId;
	// summonerId: 해당 소환사의 고유 ID입니다. 이 ID는 해당 소환사에 대한 다른 API 요청에서도 사용됩니다.
	
	private String leagueId;
	// leagueId: 해당 리그의 고유 ID입니다. 이 ID는 해당 리그에 대한 다른 API 요청에서도 사용됩니다.
	
	private String summonerName;
	// 해당 소환사의 이름입니다. 이 정보는 해당 소환사가 어떤 리그에 속해 있는지 확인하는 데 사용됩니다.
	
	private String queueType;
	// queueType: 리그 게임 모드입니다. 이 정보를 통해 해당 리그가 어떤 게임 모드에서 진행되는지 확인할 수 있습니다.
	
	private String tier;
	// tier: 해당 리그의 티어입니다. 이 정보는 해당 소환사가 속한 리그가 어느 정도 경쟁력이 있는지 확인하는 데 사용됩니다.
	
	private String rank;
	// rank: 해당 리그의 티어 내 순위입니다. 이 정보는 해당 소환사가 속한 리그 내에서 어느 정도 순위를 차지하는지 확인하는 데 사용됩니다.
	
	private int leaguePoints;
	// 해당 리그에서 해당 소환사가 획득한 리그 포인트(League Points)입니다.
	
	private int wins;
	// 해당 리그에서 해당 소환사가 획득한 승리 횟수입니다.
	
	private int losses;
	// 해당 리그에서 해당 소환사가 당한 패배 횟수입니다.
	
	private boolean hotStreak;
	// 해당 소환사가 현재 연승 상태인지 여부입니다.
	
	private boolean veteran;
	// 해당 소환사가 게임을 많이 했는지 여부입니다.
	
	private boolean freshBlood;
	// 해당 소환사가 최근에 리그에 참여한 새로운 소환사인지 여부입니다.
	
	private boolean inactive;
	// 해당 소환사가 현재 리그에서 비활성 상태인지 여부입니다.
	
	private MiniSeriesDto MiniSeriesDto;
	// 해당 소환사가 속한 미니시리즈 정보입니다. 이 정보는 해당 소환사가 승격전을 위해 플레이하는 경우에 사용됩니다.
	
	private boolean duoboolean; 
	private boolean soloboolean; 
	private boolean unrankboolean;
	private int datasize;

	public int convertBooleanToInt(boolean value) {
		return value ? 1 : 0;
	}

	public void setSummonerId(String summonerId) {
		this.summonerId = summonerId;
	}

	public void setLeagueId(String leagueId) {
		this.leagueId = leagueId;
	}

	public void setSummonerName(String summonerName) {
		this.summonerName = summonerName;
	}

	public void setQueueType(String queueType) {
		this.queueType = queueType;
	}

	public void setTier(String tier) {
        this.tier = tier.toLowerCase();
    }

	public void setRank(String rank) {
		this.rank = rank;
	}

	public void setLeaguePoints(int leaguePoints) {
		this.leaguePoints = leaguePoints;
	}

	public void setWins(int wins) {
		this.wins = wins;
	}

	public void setLosses(int losses) {
		this.losses = losses;
	}

	public void setHotStreak(boolean hotStreak) {
		this.hotStreak = hotStreak;
	}

	public void setVeteran(boolean veteran) {
		this.veteran = veteran;
	}

	public void setFreshBlood(boolean freshBlood) {
		this.freshBlood = freshBlood;
	}

	public void setInactive(boolean inactive) {
		this.inactive = inactive;
	}

	public void setMiniSeriesDto(MiniSeriesDto miniSeriesDto) {
		MiniSeriesDto = miniSeriesDto;
	}

	public void setDuoboolean(boolean duoboolean) {
		this.duoboolean = duoboolean;
	}

	public void setSoloboolean(boolean soloboolean) {
		this.soloboolean = soloboolean;
	}

	public void setUnrankboolean(boolean unrankboolean) {
		this.unrankboolean = unrankboolean;
	}

	public void setDatasize(int datasize) {
		this.datasize = datasize;
	}
	
	

}
