package com.klef.talentforge.service;

import com.klef.talentforge.model.Applicant;

public interface ApplicantService {

	public String register(Applicant applicant);
	
	public Applicant checkApplicantlogin(String uname,String pwd);
}
