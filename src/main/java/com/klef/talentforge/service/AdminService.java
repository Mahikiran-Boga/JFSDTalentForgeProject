package com.klef.talentforge.service;

import com.klef.talentforge.model.Admin;

public interface AdminService {

	public Admin checkadminlogin(String username, String password);
}
