package com.pixel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pixel.bean.Business;
import com.pixel.bean.Ecard;
import com.pixel.bean.Eloan;
import com.pixel.bean.Job;
import com.pixel.dao.BusinessDao;
import com.pixel.dao.EcardDao;
import com.pixel.dao.EloanDao;
import com.pixel.dao.JobDao;

@Component
public class MoreDetailServiceImpl implements MoreDeatailService {
    
	@Autowired
	private EloanDao eloanDao;
	
	@Autowired
	private EcardDao ecardDao;
	
	@Autowired
	private JobDao jobDao;
	
	@Autowired
	private BusinessDao businessDao;
	
	
	@Override
	public List<Eloan> getEloan(long lead_id) {
		
		return eloanDao.get(lead_id);
	}

	@Override
	public List<Ecard> getEcard(long lead_id) {
		
		return ecardDao.get(lead_id);
	}

	@Override
	public Job getJobDetails(long lead_id) {
		
		return jobDao.get(lead_id);
	}

	@Override
	public Business getBussinessDetails(long lead_id) {
		
		return businessDao.get(lead_id);
	}

}
