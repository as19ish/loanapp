package com.pixel.service;

import java.util.List;

import com.pixel.bean.Business;
import com.pixel.bean.Ecard;
import com.pixel.bean.Eloan;
import com.pixel.bean.Job;

public interface MoreDeatailService {
	
	public List<Eloan> getEloan(long lead_id);
	public List<Ecard> getEcard(long lead_id);
	public Job getJobDetails(long lead_id);
	public Business getBussinessDetails(long lead_id);

}
