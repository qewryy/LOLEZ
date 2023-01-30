package com.lolez.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmailController {

	// 메일 전송을 위한 객체 DI
	@Autowired
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/email")
	public int emailCertify(String email) throws Exception {
		System.out.println("이메일 TEST");
	    MimeMessage message = mailSender.createMimeMessage();
	    MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

	    messageHelper.setFrom("loleasy2023@gmail.com"); // 보내는사람 생략하거나 하면 정상작동을 안함
	    messageHelper.setTo("qewryy4@gmail.com"); // 받는사람 이메일
	    messageHelper.setSubject("메일전송 test"); // 메일제목은 생략이 가능하다
	    messageHelper.setText("내용 test"); // 메일 내용

	    mailSender.send(message);
	    return 0;
	    
	}

}
