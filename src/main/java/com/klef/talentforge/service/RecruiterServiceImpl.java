package com.klef.talentforge.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.JobApplications;
import com.klef.talentforge.model.Recruiter;
import com.klef.talentforge.model.ViewApplicationStatus;
import com.klef.talentforge.repository.JobApplicationsRepository;
import com.klef.talentforge.repository.JobRepository;
import com.klef.talentforge.repository.RecruiterRepository;
import com.klef.talentforge.repository.ViewApplicationStatusRepository;

@Service
public class RecruiterServiceImpl implements RecruiterService{

	
	@Autowired
	private RecruiterRepository recruiterRepository;
	
	@Autowired
	private JobRepository jobRepository;
	
	@Autowired
	private JobApplicationsRepository jobapplicationsRepository;
	
	@Autowired
	private ViewApplicationStatusRepository applicationStatusRepository;
	
	
	@Override
	public String registerRecruiter(Recruiter recruiter) {
		recruiterRepository.save(recruiter);
		return "Recruiter Registered Sucessfully";
	}

	@Override
	public Recruiter checkRecruiterlogin(String email, String pwd) {
		return recruiterRepository.checkRecruiterlogin(email, pwd);
	}

	@Override
	public String addjob(Job job) {
		jobRepository.save(job);
		return "Job Added Successfully";
	}

	public List<Job> ViewAllJobs()
	{
		return  jobRepository.findAll();
	}


	  @Override
	  public Job ViewJobByID(int id) {
	    
	    Optional<Job> obj=jobRepository.findById(id);
	    if(obj.isPresent()) {
	      Job mem=obj.get();
	      return mem;
	    }
	    else return null;

	  }

	@Override
	public Job viewJobByTitleAndDescription(String title, String description) {
		
		return jobRepository.viewJobByTitleAndDescription(title, description);
	}
	
	
	@Override
	  public List<Job> viewjobsbycompanyname(String companyname) {
	    return jobRepository.viewalljobsbycompanyname(companyname);
	  }

	  @Override
	  public String deletejob(int id) {
	    Optional<Job> obj = jobRepository.findById(id);
	    String msg="";
	    if(obj.isPresent()) {
	      Job job = obj.get();
	      jobRepository.delete(job);
	       msg = "Successfully Deleted";
	    }
	    return msg;
	  }

	@Override
	public List<JobApplications> viewalljobapplicationsByCompany(String companyname) {
		List<JobApplications> jobslist=jobapplicationsRepository.viewalljobapplicationsByCompany(companyname);
		
		return jobslist;
	}

	@Override
	public JobApplications ViewJobApplicationByID(int jobid,String jobtitle) {
		JobApplications job=jobapplicationsRepository.viewJobApplicationBYID(jobid,jobtitle);
		return job;
	}
   
	@Override
	  public String addApplicationStatus(ViewApplicationStatus viewApplicationStatus) {
	    applicationStatusRepository.save(viewApplicationStatus);
	    return "Sucessfully Updated";
	  }
	
	

}
