package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.Job;

@Repository
public interface JobRepository extends JpaRepository<Job, Integer>{

}
