package com.lolez.Spectatordto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class CurrentGameParticipantDto {

	private long championId;
	private PerksDto perks = new PerksDto();
	private long profileIconId;
	private boolean bot;
	private long teamId;
	private String summonerName;
	private String summonerId;
	private long spell1Id;
	private long spell2Id;
	private List<GameCustomizationObjectDto> gameCustomizationObjects = new ArrayList<GameCustomizationObjectDto>();
	
	@Override
	public String toString() {
		return "CurrentGameParticipantDto [championId=" + championId + ", perks=" + perks + ", profileIconId="
				+ profileIconId + ", bot=" + bot + ", teamId=" + teamId + ", summonerName=" + summonerName
				+ ", summonerId=" + summonerId + ", spell1Id=" + spell1Id + ", spell2Id=" + spell2Id
				+ ", gameCustomizationObjects=" + gameCustomizationObjects + "]";
	}

}
