package com.klef.talentforge.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.klef.talentforge.model.ContactForm;

public interface ContactUsRepository extends JpaRepository<ContactForm, Integer>{

}
