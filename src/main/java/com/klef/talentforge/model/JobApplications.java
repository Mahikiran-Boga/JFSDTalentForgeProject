package com.klef.talentforge.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;

@Entity
@Table(name="jobapplications_table")
public class JobApplications {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="jobapplication_id")
    private int applicationid;
    
    @Column(name="applicant_id")
    private int id;
    
    @Column(name = "job_id")
    private int jobid;
	
	@Column(name="job_title",nullable=false,length = 100)
    private String jobtitle;
    @Column(name="applicantion_fname",nullable=false,length = 50)
    private String firstname;
    @Column(name="applicantion_lname",nullable=false,length = 50)
    private String lastname;
    @Column(name="applicantion_email",nullable=false,length = 30)
    private String email;
    @Column(name="application_dateofbirth",nullable=false,length = 10)
    private String dateofbirth;
    @Column(name="applicantion_experience",nullable=false,length = 30)
    private String experience;
    @Column(name="applicantion_contactno",nullable=false,length = 10)
    private String contactno;
    @Column(name="applicantion_companyname",nullable=false,length = 1000)
    private String companyname;
    @Column(name="applicantion_status",nullable=false)
    private boolean applicationstatus;
    
    
    
    @Column(name = "bfileContent", columnDefinition = "LONGBLOB")
	@Lob
	private byte[] bfileContent;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getJobtitle() {
		return jobtitle;
	}

	public void setJobtitle(String jobtitle) {
		this.jobtitle = jobtitle;
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

	public String getDateofbirth() {
		return dateofbirth;
	}

	public void setDateofbirth(String dateofbirth) {
		this.dateofbirth = dateofbirth;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	public byte[] getBfileContent() {
		return bfileContent;
	}

	public void setBfileContent(byte[] bfileContent) {
		this.bfileContent = bfileContent;
	}

	public boolean isApplicationstatus() {
		return applicationstatus;
	}

	public void setApplicationstatus(boolean applicationstatus) {
		this.applicationstatus = applicationstatus;
	}

	public int getApplicationid() {
		return applicationid;
	}

	public void setApplicationid(int applicationid) {
		this.applicationid = applicationid;
	}

	public int getJobid() {
		return jobid;
	}

	public void setJobid(int jobid) {
		this.jobid = jobid;
	}
}
