package com.lolez.dto;

import lombok.Data;

@Data
public class ReplyDto {
	
	private int rno;
	private int rbno;
	private String rname;
	private String rcontent;
	private String rdate;
	private int rrec;
	private int rstate;
	
	@Override
	public String toString() {
		return "ReplyDto [rno=" + rno + ", rname=" + rname + ", rbno=" + rbno + ", rcontent=" + rcontent
				+ ", rdate=" + rdate + ", rrec=" + rrec + ", rstate=" + rstate + "]";
	}
	
	

}
