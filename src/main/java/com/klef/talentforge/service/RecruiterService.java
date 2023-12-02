package com.klef.talentforge.service;

import java.util.List;

import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.JobApplications;
import com.klef.talentforge.model.Recruiter;
import com.klef.talentforge.model.ViewApplicationStatus;

public interface RecruiterService
{
	public String registerRecruiter(Recruiter recruiter);

	public Recruiter checkRecruiterlogin(String email,String pwd);
	
	public String addjob(Job job);
	
	public List<Job> ViewAllJobs();
	
	public Job ViewJobByID(int jobid);
	
	public Job viewJobByTitleAndDescription(String title,String description);
	
	public List<Job> viewjobsbycompanyname(String companyname);
	  
	public String deletejob(int id);
	
	public List<JobApplications> viewalljobapplicationsByCompany(String companyname);
	
	public JobApplications ViewJobApplicationByID(int jobid,String jobtitle);
	
	public String addApplicationStatus(ViewApplicationStatus viewApplicationStatus);
	
	
	public ViewApplicationStatus checkingduplicatestautsalreadythere(int id, String jobtitle,String status);

	

}
