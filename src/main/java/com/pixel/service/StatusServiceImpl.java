package com.pixel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.pixel.bean.Status;
import com.pixel.dao.StatusDao;

@Component
public class StatusServiceImpl implements StatusService {
	
	@Autowired
	private StatusDao statusDao;

	@Override
	public List<Status> getAllStatus() {
		
		return statusDao.getAllStatus(); 
		
	}

}
