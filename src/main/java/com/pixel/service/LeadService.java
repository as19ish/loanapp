package com.pixel.service;

import java.util.List;

import com.pixel.bean.InterestedLead;
import com.pixel.bean.Remark;
import com.pixel.excel.Lead;

public interface LeadService {
	
	public Lead getLead(long lead_id);
	public boolean addLead(Lead lead);
	public Lead fetchLead(Long employee_id);
	public boolean changeStatus(Remark remark);
	public boolean delete(Long id);
	public boolean addToInterested(InterestedLead lead);
	public List<Lead> getInterestedLead();
	public List<Lead> getOtherLead();
	

}
