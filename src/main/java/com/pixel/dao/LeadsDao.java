package com.pixel.dao;

import com.pixel.excel.Lead;

public interface LeadsDao {
	
	public boolean addLead(Lead lead);
	public Lead fetchLead(Long employee_id);
	public boolean changeStatus(Long employee_id,String Status);
	
	 
	 

}
