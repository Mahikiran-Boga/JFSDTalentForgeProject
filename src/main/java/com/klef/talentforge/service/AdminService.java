package com.klef.talentforge.service;

import com.klef.talentforge.model.Admin;

public interface AdminService {

	public Admin checkadminlogin(String username, String password);
	
	public long applicantCount();
	
	public long recruiterCount();
	
	public long JobsCount();
	
	public long JobApplicationsCount();
}
