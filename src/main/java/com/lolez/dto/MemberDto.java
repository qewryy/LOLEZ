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
	
	
	
	public String getMemail() {
		return memail;
	}



	public void setMemail(String memail) {
		this.memail = memail;
	}



	public String getMname() {
		return mname;
	}



	public void setMname(String mname) {
		this.mname = mname;
	}



	public String getMpw() {
		return mpw;
	}



	public void setMpw(String mpw) {
		this.mpw = mpw;
	}



	public String getMdate() {
		return mdate;
	}



	public void setMdate(String mdate) {
		this.mdate = mdate;
	}



	public int getMstate() {
		return mstate;
	}



	public void setMstate(int mstate) {
		this.mstate = mstate;
	}



	public int getMaccess() {
		return maccess;
	}



	public void setMaccess(int maccess) {
		this.maccess = maccess;
	}



	@Override
	public String toString() {
		return "MemberDto [memail=" + memail + ", mname=" + mname + ", mpw=" + mpw + ", mdate=" + mdate + ", mstate="
				+ mstate + ", maccess=" + maccess + "]";
	}
	
	
	
	
}
