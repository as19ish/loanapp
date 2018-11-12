package com.pixel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.pixel.bean.InterestedLead;
import com.pixel.bean.Remark;
import com.pixel.dao.EloanDao;
import com.pixel.dao.JobDao;
import com.pixel.dao.BusinessDao;
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
	
	@Autowired
	private JobDao jobDao;
	
	@Autowired 
	private BusinessDao businessDao;
	
	@Override
	public Lead getLead(long lead_id) {
		
		return leadDao.getLead(lead_id);
	}
	
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

    @Transactional
	@Override
	public boolean addToInterested(InterestedLead lead) {
		System.out.println(lead.getNext_call());
		leadDao.addToIntrested(lead);
		if(lead.getJob() != null) {
			jobDao.create(lead.getJob());
		}else {
			businessDao.create(lead.getBusiness());
		}
		eloanDao.create(lead);
		ecardDao.create(lead);
		return true;
	}


	@Override
	public List<Lead> getInterestedLead() {
		return leadDao.getInterstedLead();
	}

    @Override
    public List<Lead> getOtherLead(){
    	return leadDao.getOtherLead();
    }
	

	

}
