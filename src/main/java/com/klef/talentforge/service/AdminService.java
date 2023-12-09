package com.klef.talentforge.service;

import java.util.List;

import com.klef.talentforge.model.Admin;
import com.klef.talentforge.model.Applicant;
import com.klef.talentforge.model.ContactForm;
import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.Recruiter;

public interface AdminService {

	public Admin checkadminlogin(String username, String password);
	
	public List<Recruiter> ViewAllRecruiters();
	  
	  
	public int recruiteracceptance(int cid, boolean acceptance);
	
	public int applicantacceptance(int cid, boolean acceptance);
	
	public List<Applicant> ViewAllApplicant();

	
	public long applicantCount();
	
	public long recruiterCount();
	
	public long JobsCount();
	
	public long JobApplicationsCount();
	
	public List<Job> ViewAllJobs();
	
	 public List<Job> adminsearchbasedonsalary(String companyname, int salary);
	 
	 public Job adminviewjobbyid(int id);
	 
	 public List<ContactForm> viewallQueries();

}
