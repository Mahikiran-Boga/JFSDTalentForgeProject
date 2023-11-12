package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.Applicant;


@Repository
public interface ApplicantRepository extends JpaRepository<Applicant, Integer> {

	
	@Query("select s from Applicant s where s.email=?1 and s.password=?2")
	public Applicant checkApplicantlogin(String email,String pwd);
	
	
}
