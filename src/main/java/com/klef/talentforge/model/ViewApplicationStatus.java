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
    @Column(name="applicationid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
    private int applicationid;
	
	@Column(name="applicant_id")
	private int id;
	
	@Column(name="applicationstatustittle")
	private String applicationstatustittle;
	

	@Column(name="applicationstatus")
	private String applicationstatus;
	
	@Column(name="comment")
	private String comment;
	
	public int getApplicationid() {
		return applicationid;
	}

	public void setApplicationid(int applicationid) {
		this.applicationid = applicationid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getApplicationstatustittle() {
		return applicationstatustittle;
	}

	public void setApplicationstatustittle(String applicationstatustittle) {
		this.applicationstatustittle = applicationstatustittle;
	}

	public String getApplicationstatus() {
		return applicationstatus;
	}

	public void setApplicationstatus(String applicationstatus) {
		this.applicationstatus = applicationstatus;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	@Override
	public String toString() {
		return "ViewApplicationStatus [applicationid=" + applicationid + ", id=" + id + ", applicationstatustittle="
				+ applicationstatustittle + ", applicationstatus=" + applicationstatus + ", comment=" + comment + "]";
	}


	
}
