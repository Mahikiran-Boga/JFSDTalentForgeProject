package com.klef.talentforge.service;

import org.springframework.web.multipart.MultipartFile;

import com.klef.talentforge.model.Applicant;

public interface ApplicantService {

	public String register(Applicant applicant);
	
	public Applicant checkApplicantlogin(String uname,String pwd);

	public Applicant getApplicantById(int id);
	
	public String applyJob(String jobtitle,String firstname,String lastname,String email,String dateofbirth
			
			,String experience,String contactno,String companyname,MultipartFile request);
}
