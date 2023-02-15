package com.lolez.Leaguedto;

import lombok.Data;

@Data
public class MiniSeriesDto {

	private String id;
	// PK지정을 위해 만들어둔 id. 이후 puuid가 들어오도록 수정조치 예정
	
	private int losses;
	// 해당 소환사가 현재까지 진 게임 횟수입니다. 이 값은 0에서 3사이의 값을 가질 수 있습니다.
	
	private int progress;
	// 현재까지 이긴 게임 수에 해당하는 문자열입니다. 'W'는 이긴 게임을, 'L'은 진 게임을 나타냅니다. 
	// 이 문자열의 길이는 항상 3입니다. 예를 들어 "WLW"는 첫번째 게임과 세번째 게임에서 이긴 것을 의미합니다. 
	
	private String target;
	// 해당 소환사가 달성해야 하는 이긴 게임 횟수입니다. 이 값은 miniSeries에 참여하는 경우, 3입니다 ( 3전 2승제 )
	
	private int wins;
	// 해당 소환사가 현재까지 이긴 게임 횟수입니다. 이 값은 0에서 3사이의 값을 가질 수 있습니다.
	
}
