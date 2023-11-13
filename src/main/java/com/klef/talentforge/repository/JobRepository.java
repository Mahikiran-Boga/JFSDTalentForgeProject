package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.Job;

@Repository
public interface JobRepository extends JpaRepository<Job, Integer>{
    
	@Query("from Job where jobtitle=?1 and description=?2")
	public Job viewJobByTitleAndDescription(String title, String description);


}