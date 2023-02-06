package com.lolez.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class EmailDto {
	
	private String pemail;
	private int pstatus;
	private String ptoken;

	@Override
	public String toString() {
		return "EmailDto [pemail=" + pemail + ", pstatus=" + pstatus + ", ptoken=" + ptoken + "]";
	}
	
}
