package com.pixel.dao;
import com.pixel.bean.Eloan;
import java.util.List;

import com.pixel.bean.InterestedLead;

public interface EloanDao {
	
	public List<Eloan> get(Long lead_id);
	public boolean create(InterestedLead lead);
	

}
