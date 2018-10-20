package com.pixel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
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

	@Override
	public Lead fetchLead(Long employee_id) {
		Lead lead = null;
		
		try {
			if (this.checkAssigned(employee_id)) {
				String query = "SELECT * FROM leads WHERE employee_id = ? and status = 'new'";
				lead = jdbcTemplate.queryForObject(query,new Object[]{employee_id}, new LeadRowMapper());
			}else {
				String query = "SELECT * FROM `leads` WHERE assigned = false and status = 'new' ORDER BY `leads`.`lead_id` DESC limit 1";
				lead = jdbcTemplate.queryForObject(query, new LeadRowMapper());
				this.setAssigned(lead.getLead_id(),employee_id);
				
			}
			
		} catch (Exception e) {
            //exception throws when email id does not exists
		}
		return lead;
				
	}
	@Override
	public boolean changeStatus(Long employee_id,String status) {
		
		String query = "UPDATE `leads` SET `status` = ? WHERE employee_id = ? and status = 'new'";
		int row = jdbcTemplate.update(query, new Object[]{status,employee_id});
		if (row == 1) {
			return true;
		}
		return false;
		
	}

		
	
	private void setAssigned(Long lead_id,Long employee_id) {
		String query = "UPDATE `leads` SET `assigned` = '1',`employee_id` = ? WHERE `leads`.`lead_id` = ?";
    	jdbcTemplate.update(query, new Object[]{employee_id,lead_id});
				
	}
	
	private boolean checkAssigned(Long employee_id) {
		String query = "SELECT COUNT(*) FROM leads WHERE employee_id = ? and status = 'new' ";
		System.out.println(jdbcTemplate.queryForObject(query, new Object[]{employee_id}, Integer.class));
		if(jdbcTemplate.queryForObject(query, new Object[]{employee_id}, Integer.class) > 0) {
			return true;
		}
		return false;
		
	}
	
	
	static class LeadRowMapper implements RowMapper<Lead> {

		@Override
		public Lead mapRow(ResultSet rs, int n) throws SQLException {
			Lead lead = new Lead();
			lead.setLead_id(new Long(rs.getInt("lead_id")));
			lead.setName(rs.getString("name"));
			lead.setMobile(rs.getString("mobile"));
			lead.setCreation_date( rs.getDate("creation_date"));
			lead.setLast_updated_date(rs.getDate("last_updated_date"));
			lead.setStatus(rs.getString("status"));
			lead.setEmployee_id(new Long(rs.getInt("employee_id")));
			return lead;
		}
	}

	

}
