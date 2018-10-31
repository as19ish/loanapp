package com.pixel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pixel.bean.InterestedLead;
import com.pixel.dao.EloanDao;
import com.pixel.dao.LeadsDao;
import com.pixel.excel.Lead;

@Component
public class LeadServiceImp implements LeadService {
	
	@Autowired
	private LeadsDao leadDao;
	
	@Autowired
	private EloanDao eloanDao;
	

	@Override
	public boolean addLead(Lead lead) {
		
		return leadDao.addLead(lead);
	}


	@Override
	public Lead fetchLead(Long employee_id) {
		
		return leadDao.fetchLead(employee_id);
	}
	
	@Override
	public boolean changeStatus(Long employee_id,String status) {
		return leadDao.changeStatus(employee_id,status);
		
	}


	@Override
	public boolean delete(Long id) {
		return leadDao.delete(id);
	}


	@Override
	public boolean addToInterested(InterestedLead lead) {
		leadDao.addToIntrested(lead);
		eloanDao.create(lead);
		return true;
	}

	

}
