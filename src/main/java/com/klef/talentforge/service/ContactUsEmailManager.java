package com.klef.talentforge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import jakarta.mail.internet.MimeMessage;

@Service
public class ContactUsEmailManager {

	@Autowired
    private JavaMailSender mail;

	public String sendEmailToManager(String fromEmail, String toEmail, String subject, String message) {
	    try {
	        MimeMessage mimeMessage = mail.createMimeMessage();
	        MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true);

	        messageHelper.setFrom(fromEmail);
	        messageHelper.setTo("mahikiran.b@gmail.com");
	        messageHelper.setSubject(subject);
	        
	        // Include the message in the body of the email
	        String emailBody = "<p><strong style='font-size: 16px;'>Hello, my email is:</strong> <span style='font-size: 16px;'>" + fromEmail + "</span></p>"
	                + "<p><strong>This is my Query:</strong></p>"
	                + "<p>" + message + "</p>";
	        messageHelper.setText(emailBody, true);

	        mail.send(mimeMessage);
	        System.out.println("Email sent");
	        return "Email sent successfully";
	    } catch (Exception e) {
	        System.out.println(e);
	        return e.getMessage();
	    }
	}

	
}
