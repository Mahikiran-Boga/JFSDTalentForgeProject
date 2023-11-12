package com.klef.talentforge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.talentforge.model.Applicant;
import com.klef.talentforge.repository.ApplicantRepository;


@Service
public class ApplicantServiceImpl implements ApplicantService {

	
	@Autowired
	private ApplicantRepository applicantRepository;
	
	@Override
	public String register(Applicant applicant) {
		applicantRepository.save(applicant);
		return "Registerd Sucessfuly";
	}

	@Override
	public Applicant checkApplicantlogin(String uname, String pwd) {
		return applicantRepository.checkApplicantlogin(uname, pwd);
	}
	
	
	

}
