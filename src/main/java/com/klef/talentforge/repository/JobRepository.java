package com.klef.talentforge.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.Job;
import com.klef.talentforge.model.JobApplications;

@Repository
public interface JobRepository extends JpaRepository<Job, Integer>{
    
	@Query("from Job where jobtitle=?1 and description=?2")
	public Job viewJobByTitleAndDescription(String title, String description);
	
	@Query("from Job where companyname=?1 ")
	public List<Job> viewalljobsbycompanyname(String companyname);
	
	@Query("from Job where jobtitle=?1 and companyname=?2")
	public Job viewJobByTitleAndCompanyName(String title, String companyname);
	
	
	
	
	
	
	



}
