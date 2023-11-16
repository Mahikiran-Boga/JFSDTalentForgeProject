package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.JobApplications;

@Repository
public interface JobApplicationsRepository extends JpaRepository<JobApplications, Integer>{

}
