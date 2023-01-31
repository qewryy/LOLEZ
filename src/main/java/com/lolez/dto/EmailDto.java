package com.lolez.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class EmailDto {
	
	private String pemail;
	private int pstatus;
	private String ptoken;
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public int getPstatus() {
		return pstatus;
	}
	public void setPstatus(int pstatus) {
		this.pstatus = pstatus;
	}
	public String getPtoken() {
		return ptoken;
	}
	public void setPtoken(String ptoken) {
		this.ptoken = ptoken;
	}
	@Override
	public String toString() {
		return "EmailDto [pemail=" + pemail + ", pstatus=" + pstatus + ", ptoken=" + ptoken + "]";
	}
	
	
	
	
	
	
}
