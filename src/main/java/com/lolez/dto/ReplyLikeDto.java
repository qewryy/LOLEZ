package com.lolez.dto;

import lombok.Data;

@Data
public class ReplyLikeDto {

	private int rlno;
	private int rlbno;
	private String rlname;
	private int rlstate;
	@Override
	public String toString() {
		return "ReplyLikeDto [rlno=" + rlno + ", rlbno=" + rlbno + ", rlname=" + rlname + ", rlstate=" + rlstate + "]";
	}
	
	
}
