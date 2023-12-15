package com.klef.talentforge.service;

import java.util.List;
import java.util.Set;

import org.springframework.web.multipart.MultipartFile;

import com.klef.talentforge.model.Applicant;
import com.klef.talentforge.model.ApplicantImage;
import com.klef.talentforge.model.ContactForm;
import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.JobApplications;
import com.klef.talentforge.model.Recruiter;
import com.klef.talentforge.model.ViewApplicationStatus;

public interface ApplicantService {

	public String register(Applicant applicant);
	
	public Applicant checkApplicantlogin(String uname,String pwd);

	public Applicant getApplicantById(int id);
	
	public String applyJob(int jobid,int id,String jobtitle,String firstname,String lastname,String email,String dateofbirth
			
	,String experience,String contactno,String companyname,MultipartFile request,boolean status);
	
	 public JobApplications checkJobApplication(String email,String jobtitle,String companyname);
	 
	 public List<JobApplications> ViewMyJobApplications(int id);
	 
	public Job viewJobByTitleAndCompanyName(String title, String companyname);
	
	public String uploadapplicantprofileimage(ApplicantImage image);

	public ApplicantImage ViewimageByID(int id);
	
	public boolean getApplicationStatus(int id,String title,String companyName);

	public List<ViewApplicationStatus> viewmyjobapplicationStatus(int id,String jobtitle);
	
	public String withdrawapplication(int id, int applicantid);
	
	public String ApplicantupdateProfile(Applicant applicant);
	
	public List<Recruiter> viewallCompanies();
	
	public List<Job> viewJobsByCompanyName(String companyname);
	
	public List<Job> viewAllJobsByDate(String fromdate);
    
	public String contactusform(ContactForm contactForm);

}
