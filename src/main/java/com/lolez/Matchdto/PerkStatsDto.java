package com.lolez.Matchdto;

import lombok.Data;

@Data
public class PerkStatsDto {

	private String puuid;
	// PK지정을 위한 FK로 참조받은 puuid

	private long gameId;
	// PK지정을 위한 FK로 참조받은 gameId
	
	private int defense; 
	// 방어 룬 스탯을 나타냅니다. 방어 룬 스탯에는 생명력(Health), 방어력(Armor), 마법 저항력(Magic Resist) 등이 있습니다.
	
	private int flex;
	// 융통성 룬 스탯을 나타냅니다. 융통성 룬 스탯에는 공격력(Attack Damage), 주문력(Ability Power), 생명력 회복(Health Regen) 등이 있습니다.
	
	private int offense;
	// 공격 룬 스탯을 나타냅니다. 공격 룬 스탯에는 치명타 확률(Critical Strike Chance), 공격 속도(Attack Speed), 주문 가속도(Cooldown Reduction) 등이 있습니다.
	
}
