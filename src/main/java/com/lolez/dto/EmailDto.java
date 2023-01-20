package com.lolez.dto;

import java.time.LocalDate;

import lombok.Data;

@Data
public class EmailDto {
	
	private Long emailid;
	private String from;
	private String to;
	private String subject;
	private String content;
	private int status;
	
	public Long getEmailid() {
		return emailid;
	}



	public void setEmailid(Long emailid) {
		this.emailid = emailid;
	}



	public String getFrom() {
		return from;
	}



	public void setFrom(String from) {
		this.from = from;
	}



	public String getTo() {
		return to;
	}



	public void setTo(String to) {
		this.to = to;
	}



	public String getSubject() {
		return subject;
	}



	public void setSubject(String subject) {
		this.subject = subject;
	}



	public String getContent() {
		return content;
	}



	public void setContent(String content) {
		this.content = content;
	}


	public int getStatus() {
		return status;
	}



	public void setStatus(int status) {
		this.status = status;
	}



	@Override
	public String toString() {
		return "EmailDto [emailid=" + emailid + ", from=" + from + ", to=" + to + ", subject=" + subject + ", content="
				+ content + ", status=" + status + "]";
	}
	
	
}
