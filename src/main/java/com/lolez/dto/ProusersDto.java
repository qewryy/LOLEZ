package com.lolez.dto;

import lombok.Data;

@Data
public class ProusersDto {

	private String proteam;
	private String proid;
	private String proname;
	
	@Override
	public String toString() {
		return "ProusersDto [proteam=" + proteam + ", proid=" + proid + ", proname=" + proname + "]";
	}
	
}
