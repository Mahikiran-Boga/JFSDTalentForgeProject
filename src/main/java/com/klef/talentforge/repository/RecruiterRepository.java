package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.Recruiter;

@Repository
public interface RecruiterRepository extends JpaRepository<Recruiter, Integer>{
	@Query("select s from Recruiter s where s.email=?1 and s.password=?2")
	public Recruiter checkRecruiterlogin(String email,String pwd);
}
