package com.lolez.dto;

import lombok.Data;

@Data
public class BoardDto {
	private int bno;			
	private String bwriter;
	private String btitle;
	private String bcontent;
	private String bdate;
	private int brec;
	private int bhits;
	private int bstate;
	@Override
	public String toString() {
		return "BoardsDto [bno=" + bno + ", bwriter=" + bwriter + ", btitle=" + btitle + ", bcontent=" + bcontent
				+ ", bdate=" + bdate + ", brec=" + brec + ", bhits=" + bhits + ", bstate=" + bstate + "]";
	}
	
	
}
