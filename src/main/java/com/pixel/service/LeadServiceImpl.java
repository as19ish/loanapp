package com.pixel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pixel.bean.InterestedLead;
import com.pixel.bean.Remark;
import com.pixel.dao.EloanDao;
import com.pixel.dao.EcardDao;
import com.pixel.dao.LeadsDao;
import com.pixel.excel.Lead;

@Component
public class LeadServiceImpl implements LeadService {
	
	@Autowired
	private LeadsDao leadDao;
	
	@Autowired
	private EloanDao eloanDao;
	
	@Autowired
	private EcardDao ecardDao;
	

	@Override
	public boolean addLead(Lead lead) {
		
		return leadDao.addLead(lead);
	}


	@Override
	public Lead fetchLead(Long employee_id) {
		
		return leadDao.fetchLead(employee_id);
	}
	
	@Override
	public boolean changeStatus(Remark remark) {
		return leadDao.changeStatus(remark);
		
	}


	@Override
	public boolean delete(Long id) {
		return leadDao.delete(id);
	}


	@Override
	public boolean addToInterested(InterestedLead lead) {
		leadDao.addToIntrested(lead);
		eloanDao.create(lead);
		ecardDao.create(lead);
		return true;
	}


	@Override
	public List<Lead> getInterestedLead() {
		return leadDao.getInterstedLead();
	}

	

}
