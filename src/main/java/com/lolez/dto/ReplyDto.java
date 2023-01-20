package com.lolez.dto;

import lombok.Data;

@Data
public class ReplyDto {
	
	private int rnum;
	private String rwriter;
	private int rbno;
	private String rcontent;
	private String rdate;
	private String rrec;
	private String rstate;
	
	@Override
	public String toString() {
		return "ReplyDto [rnum=" + rnum + ", rwriter=" + rwriter + ", rbno=" + rbno + ", rcontent=" + rcontent
				+ ", rdate=" + rdate + ", rrec=" + rrec + ", rstate=" + rstate + "]";
	}
	
	

}
