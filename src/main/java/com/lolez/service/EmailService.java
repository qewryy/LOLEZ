package com.lolez.service;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sendgrid.Method;
import com.sendgrid.Request;
import com.sendgrid.Response;
import com.sendgrid.SendGrid;
import com.sendgrid.helpers.mail.Mail;
import com.sendgrid.helpers.mail.objects.Content;
import com.sendgrid.helpers.mail.objects.Email;

@Service
public class EmailService {
	
    private final String FROM = "loleasy2023@gmail.com";
    
	    private String apiKey = "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";
	    
	    public void sendEmail(String to) {
	        Email from = new Email("loleasy2023@gmail.com");
	        Email to2 = new Email(to);
	        Mail mail = new Mail(from, null, to2, null);
	        SendGrid sg = new SendGrid(apiKey);
	        Request request = new Request();
	        try {
	            request.setMethod(Method.POST);
	            request.setEndpoint("mail/send");
	            request.setBody(mail.build());
	            Response response = sg.api(request);
	            System.out.println(response.getStatusCode());
	            System.out.println(response.getBody());
	            System.out.println(response.getHeaders());
	        } catch (IOException ex) {
	            ex.printStackTrace();
	        }
	    }


}
