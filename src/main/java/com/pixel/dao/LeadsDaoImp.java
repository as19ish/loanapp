package com.pixel.dao;

import java.sql.Types;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pixel.excel.Lead;

@Component
public class LeadsDaoImp implements LeadsDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean addLead(Lead lead) {
		
		boolean isAdded = false;
		String query = "INSERT INTO leads (name ,mobile,creation_date,last_updated_date,status)" + " VALUES (?, ?,?,?,?)";
		// define query arguments
		Object[] params = new Object[] { lead.getName().toUpperCase(),lead.getMobile(),lead.getCreation_date(),lead.getLast_updated_date(),lead.getStatus() };
		// define SQL types of the arguments
		int[] types = new int[] { Types.VARCHAR, Types.VARCHAR ,Types.TIMESTAMP,Types.TIMESTAMP,Types.VARCHAR};
		int row = jdbcTemplate.update(query, params, types);
		System.out.println(row + " row inserted.");
		if (row == 1) {
			isAdded = true;
		}
		return isAdded;
	}

}
