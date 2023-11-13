package com.klef.talentforge.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "recruiter_table")
public class Recruiter {
    
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="recruiter_id")
    private int id;
    @Column(name="recruiter_name",nullable=false,length = 50)
    private String companyname;
    @Column(name="recruiter_email",nullable=false,unique = true,length = 30)
    private String email;
    @Column(name="recruiter_password",nullable=false,length = 30)
    private String password;
    @Column(name="recruiter_contactno",nullable=false,unique = true)
    private String contactno;
    @Column(name="recruiter_address",nullable=false,length = 1000)
    private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getContactno() {
		return contactno;
	}
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Recruiter [id=" + id + ", companyname=" + companyname + ", email=" + email + ", password=" + password
				+ ", contactno=" + contactno + ", address=" + address + "]";
	}
    
    
    
    
    
	
}
