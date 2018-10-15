package com.pixel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.pixel.dao.LeadsDao;
import com.pixel.excel.Lead;

@Component
public class LeadServiceImp implements LeadService {
	
	@Autowired
	private LeadsDao leadDao;
	

	@Override
	public boolean addLead(Lead lead) {
		
		return leadDao.addLead(lead);
	}

	

}
