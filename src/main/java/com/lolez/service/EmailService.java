package com.lolez.service;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.lolez.dao.EmailDao;
import com.lolez.dto.EmailDto;



@Service
public class EmailService {
	
	// 메일 전송을 위한 객체 DI
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private EmailDao edao;

	public int EmailProve(String email, String token, String contect, int status) throws Exception {
		System.out.println("EmailService EmailProve() 실행");
		int ir = 0;
		
		if(status == -1) {
			System.out.println("신규 인증 이메일");
			ir = edao.insertEmailProve(email, token);
		}else if(status == 0){
			System.out.println("기존 인증 이메일");
			ir = 1;
		}
		
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

		messageHelper.setFrom("loleasy2023@gmail.com"); // 보내는사람 생략하거나 하면 정상작동을 안함
		messageHelper.setTo(email); // 받는사람 이메일
		messageHelper.setSubject("회원가입 이메일 인증 안내"); // 메일제목은 생략이 가능하다
		messageHelper.setText(contect, true); // 메일 내용

		mailSender.send(message);
		
		return ir;

	}

	public EmailDto ProveCheck(String email) {
		System.out.println("EmailService ProveCheck() 실행");
		EmailDto rs = edao.ProveCheck(email);
		
		return rs;
	}

	public String selectToken(String token) {
		System.out.println("EmailService selectToken() 실행");
		String rs = edao.selectToken(token);
		
		return rs;
	}

	public int updateEmailProve(String token) {
		System.out.println("EmailService updateEmailProve() 실행");
		int us = edao.updateEmailProve(token);
		
		return us;
	}

}
