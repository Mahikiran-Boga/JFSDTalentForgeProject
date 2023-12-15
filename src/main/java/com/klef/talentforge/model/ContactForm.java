package com.klef.talentforge.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;



@Entity
@Table(name = "contactform_table")
public class ContactForm {
	
	
	@Column(name = "contact_id",length = 30,nullable = false)
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Id
	private int id;
	@Column(name = "contact_name",length = 30,nullable = false)
	private String name;
	@Column(name = "contact_email",length = 30,nullable = false)
	private String email;
	@Column(name = "contact_Subject",length = 5000,nullable = false)
	private String Subject;
	@Column(name = "contact_message",length = 5000,nullable = false)
	private String message;
	
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
    
    
	
	
	
	
	
}
