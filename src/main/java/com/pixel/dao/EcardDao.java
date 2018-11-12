package com.pixel.dao;

import java.util.List;

import com.pixel.bean.Ecard;
import com.pixel.bean.InterestedLead;

public interface EcardDao {
	
	public List<Ecard> get(long lead_id);
	public boolean create(InterestedLead lead);

}
