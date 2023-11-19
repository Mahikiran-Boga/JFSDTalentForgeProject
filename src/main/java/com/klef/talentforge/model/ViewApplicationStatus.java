package com.klef.talentforge.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "applicationstatus_table")
public class ViewApplicationStatus {

	@Id
    @Column(name="applicantion_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
    private int applicationid;
	
	 @Column(name="applicant_id")
	 private int id;
	
	@Column(name="applicationstatus_tittle")
	private String Applicationstatustittle;
	

	@Column(name="applicationstatus_status")
	private String Applicationstatus;
	@Column(name="applicationstatus_comment")
	private String comment;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getApplicationstatus() {
		return Applicationstatus;
	}
	public void setApplicationstatus(String applicationstatus) {
		Applicationstatus = applicationstatus;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
	
		this.comment = comment;
	}
	
	public String getApplicationstatustittle() {
		return Applicationstatustittle;
	}
	public void setApplicationstatustittle(String applicationstatustittle) {
		Applicationstatustittle = applicationstatustittle;
	}
	public int getApplicationid() {
		return applicationid;
	}
	public void setApplicationid(int applicationid) {
		this.applicationid = applicationid;
	}
	@Override
	public String toString() {
		return "ViewApplicationStatus [id=" + id + ", Applicationstatus=" + Applicationstatus + ", comment=" + comment
				+ "]";
	}
	
	
	
	
	
	
	
}
