package com.klef.talentforge.service;

import java.awt.print.Book;
import java.io.IOException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.klef.talentforge.model.Applicant;
import com.klef.talentforge.model.JobApplications;
import com.klef.talentforge.repository.ApplicantRepository;
import com.klef.talentforge.repository.JobApplicationsRepository;

import org.springframework.util.StringUtils;

@Service
public class ApplicantServiceImpl implements ApplicantService {

	
	@Autowired
	private ApplicantRepository applicantRepository;
	
	@Autowired
	private JobApplicationsRepository jobapplicationsRepository;
	
	@Override
	public String register(Applicant applicant) {
		applicantRepository.save(applicant);
		return "Registerd Sucessfuly";
	}

	@Override
	public Applicant checkApplicantlogin(String uname, String pwd) {
		return applicantRepository.checkApplicantlogin(uname, pwd);
	}

	
	public Applicant getApplicantById(int id) {
		Optional<Applicant> obj=applicantRepository.findById(id);
		if(obj.isPresent()) {
			Applicant app=obj.get();
			 return app;
		}
		return null;
	}

	@Override
	public String applyJob(String jobtitle, String firstname, String lastname, String email, String dateofbirth,
			String experience, String contactno, String companyname, MultipartFile request) 
	{
		String fileName = StringUtils.cleanPath(request.getOriginalFilename());
	       String msg=null;
	       
	        try {
	            JobApplications jobApplications = new JobApplications();
	            
	            jobApplications.setJobtitle(jobtitle);
	            jobApplications.setFirstname(firstname);
	            jobApplications.setLastname(lastname);
	            jobApplications.setEmail(email);
	            jobApplications.setDateofbirth(dateofbirth);
	            jobApplications.setExperience(experience);
	            jobApplications.setCompanyname(companyname);
	            jobApplications.setContactno(contactno);
	         
	            jobApplications.setBfileContent(request.getBytes());
	            jobapplicationsRepository.save(jobApplications);
	            msg= "Your Job Application has been Successfull !";
	        } catch (IOException ex)
	        {
	           msg="This Job is Already Applied !";
	        }
	        return msg;
		
	}
	
	
	

}
