package com.lolez.dto;

import lombok.Data;

@Data
public class MemberDto {
	private String memail;
	private String mname;
	private String mpw;
	private String mdate;
	private int mstate;
	private int maccess;

	@Override
	public String toString() {
		return "MemberDto [memail=" + memail + ", mname=" + mname + ", mpw=" + mpw + ", mdate=" + mdate + ", mstate="
				+ mstate + ", maccess=" + maccess + "]";
	}
	
	
	
	
}
