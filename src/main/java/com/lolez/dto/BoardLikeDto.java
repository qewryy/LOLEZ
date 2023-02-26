package com.lolez.dto;

import lombok.Data;

@Data
public class BoardLikeDto {

	private int lbno;
	private String lname;
	private int lstate;
	
	@Override
	public String toString() {
		return "BoardLikeDto [lbno=" + lbno + ", lname=" + lname + ", lstate=" + lstate + "]";
	}
	
	
	
}
