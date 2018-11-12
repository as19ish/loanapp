package com.pixel.dao;

import com.pixel.bean.Business;

public interface BusinessDao {
	
	public Business get(long lead_id);
	public void create(Business bus);

	

}
