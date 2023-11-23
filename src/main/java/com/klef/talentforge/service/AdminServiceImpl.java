package com.klef.talentforge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.talentforge.model.Admin;
import com.klef.talentforge.repository.AdminRepository;
import com.klef.talentforge.repository.ApplicantRepository;
import com.klef.talentforge.repository.JobApplicationsRepository;
import com.klef.talentforge.repository.JobRepository;
import com.klef.talentforge.repository.RecruiterRepository;

@Service
public class AdminServiceImpl implements AdminService
{

	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private JobRepository jobRepository;
	
	@Autowired
	private JobApplicationsRepository jobapplicationsRepository;
	
	@Autowired
	private ApplicantRepository applicantRepository;
	
	@Autowired
	private RecruiterRepository recruiterRepository;
	
	
	
	
	
	public Admin checkadminlogin(String username, String password) {
		
		return adminRepository.checkAdminlogin(username, password);
	}


	@Override
	public long applicantCount() {
		
		return applicantRepository.count();
	}


	@Override
	public long recruiterCount() 
	{
		return recruiterRepository.count();
	}


	@Override
	public long JobsCount() {
		return jobRepository.count();
	}


	@Override
	public long JobApplicationsCount() {
		return jobapplicationsRepository.count();
	}

}
