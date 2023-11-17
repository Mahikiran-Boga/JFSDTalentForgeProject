package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.ApplicantImage;

@Repository
public interface Uploadapplicantprofileimage extends JpaRepository<ApplicantImage, Integer>{

}
