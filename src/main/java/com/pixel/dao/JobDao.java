package com.pixel.dao;

import com.pixel.bean.Job;

public interface JobDao {
	
	public Job get(long lead_id);
	public void create(Job job);

}
