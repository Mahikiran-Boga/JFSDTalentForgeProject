package com.klef.talentforge.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "applicant_table")
public class Applicant {

	
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Column(name="applicant_id")
	    private int id;
	    @Column(name="applicant_fname",nullable=false,length = 50)
	    private String firstname;
	    @Column(name="applicant_lname",nullable=false,length = 50)
	    private String lastname;
	    @Column(name="applicant_email",nullable=false,unique = true,length = 30)
	    private String email;
	    @Column(name="applicant_gender",nullable=false,length = 10)
	    private String gender;
	    @Column(name="applicant_password",nullable=false,length = 30)
	    private String password;
	    @Column(name="applicant_contactno",nullable=false,unique = true)
	    private String contactno;
	    @Column(name="applicant_address",nullable=false,length = 1000)
	    private String Address;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getFirstname() {
			return firstname;
		}
		public void setFirstname(String firstname) {
			this.firstname = firstname;
		}
		public String getLastname() {
			return lastname;
		}
		public void setLastname(String lastname) {
			this.lastname = lastname;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
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
			return Address;
		}
		public void setAddress(String address) {
			Address = address;
		}
		@Override
		public String toString() {
			return "Applicant [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", email=" + email
					+ ", gender=" + gender + ", password=" + password + ", contactno=" + contactno + ", Address="
					+ Address + "]";
		}
	    
	    
	    
	
}
