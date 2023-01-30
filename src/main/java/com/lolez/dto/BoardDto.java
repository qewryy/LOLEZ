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
	
	
	
	public int getBno() {
		return bno;
	}



	public void setBno(int bno) {
		this.bno = bno;
	}



	public String getBwriter() {
		return bwriter;
	}



	public void setBwriter(String bwriter) {
		this.bwriter = bwriter;
	}



	public String getBtitle() {
		return btitle;
	}



	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}



	public String getBcontent() {
		return bcontent;
	}



	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}



	public String getBdate() {
		return bdate;
	}



	public void setBdate(String bdate) {
		this.bdate = bdate;
	}



	public int getBrec() {
		return brec;
	}



	public void setBrec(int brec) {
		this.brec = brec;
	}



	public int getBhits() {
		return bhits;
	}



	public void setBhits(int bhits) {
		this.bhits = bhits;
	}



	public int getBstate() {
		return bstate;
	}



	public void setBstate(int bstate) {
		this.bstate = bstate;
	}



	@Override
	public String toString() {
		return "BoardsDto [bno=" + bno + ", bwriter=" + bwriter + ", btitle=" + btitle + ", bcontent=" + bcontent
				+ ", bdate=" + bdate + ", brec=" + brec + ", bhits=" + bhits + ", bstate=" + bstate + "]";
	}
	
	
}
