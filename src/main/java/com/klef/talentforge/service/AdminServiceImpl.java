package com.klef.talentforge.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.talentforge.model.Admin;
import com.klef.talentforge.repository.AdminRepository;

@Service
public class AdminServiceImpl implements AdminService
{

	@Autowired
	private AdminRepository adminRepository;
	
	
	public Admin checkadminlogin(String username, String password) {
		
		return adminRepository.checkAdminlogin(username, password);
	}

}
