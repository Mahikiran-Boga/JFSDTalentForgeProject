package com.klef.talentforge.repository;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.talentforge.model.ViewApplicationStatus;

@Repository
public interface ViewApplicationStatusRepository extends JpaRepository<ViewApplicationStatus, Integer>
{

	
	@Query("from ViewApplicationStatus where id=?1 and Applicationstatustittle=?2")
	public List<ViewApplicationStatus> getStatusByIDAndTitle(int id,String Applicationstatustittle);
	
	    
	    
}
