package com.klef.talentforge.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.Recruiter;
import com.klef.talentforge.repository.JobRepository;
import com.klef.talentforge.repository.RecruiterRepository;

@Service
public class RecruiterServiceImpl implements RecruiterService{

	
	@Autowired
	private RecruiterRepository recruiterRepository;
	
	@Autowired
	private JobRepository jobRepository;
	
	
	
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
	

}
