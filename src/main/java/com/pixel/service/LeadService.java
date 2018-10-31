package com.pixel.service;

import com.pixel.bean.InterestedLead;
import com.pixel.excel.Lead;

public interface LeadService {
	
	public boolean addLead(Lead lead);
	public Lead fetchLead(Long employee_id);
	public boolean changeStatus(Long employee_id,String status);
	public boolean delete(Long id);
	public boolean addToInterested(InterestedLead lead);
	

}
