package com.pixel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.Date;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pixel.bean.InterestedLead;
import com.pixel.bean.Remark;
import com.pixel.excel.Lead;
import com.pixel.util.AppUtil;

@Component
public class LeadsDaoImp implements LeadsDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	
	@Override
	public Lead getLead(long lead_id) {
		String query = "SELECT leads.lead_id,leads.name,leads.mobile,leads.email,leads.alternate_mobile,leads.creation_date,leads.last_updated_date,leads.status_id,leads.employee_id,leads.next_call,leads.remark,leads.occupation_id, status.name as status from leads INNER JOIN status on leads.status_id=status.id where lead_id = ? ";
		return jdbcTemplate.query(query,new Object[] {lead_id}, new BeanPropertyRowMapper<Lead>(Lead.class)).get(0);
		
	}


	@Override
	public boolean addLead(Lead lead) {
		
		boolean isAdded = false;
		String query = "INSERT IGNORE INTO leads (name ,mobile,creation_date,last_updated_date,status_id)" + " VALUES (?, ?,?,?,(SELECT id from status where name = 'new'))";
		Object[] params = new Object[] { lead.getName().toUpperCase(),lead.getMobile(),lead.getCreation_date(),lead.getLast_updated_date() };
		int[] types = new int[] { Types.VARCHAR, Types.VARCHAR ,Types.TIMESTAMP,Types.TIMESTAMP};
		int row = jdbcTemplate.update(query, params, types);
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
				String query = "SELECT * FROM leads WHERE employee_id = ? and status_id = (SELECT id from status where name = 'new')";
				lead = jdbcTemplate.queryForObject(query,new Object[]{employee_id}, new LeadRowMapper());
			}else {
				String query = "SELECT * FROM `leads` WHERE assigned = false and status_id = (SELECT id from status where name = 'new') ORDER BY `leads`.`lead_id` DESC limit 1";
				lead = jdbcTemplate.queryForObject(query, new LeadRowMapper());
				this.setAssigned(lead.getLead_id(),employee_id);
				
			}
			
		} catch (Exception e) {
            e.printStackTrace();
		}
		return lead;
				
	}
	@Override
	public boolean changeStatus(Remark remark) {
		
		String query = "UPDATE `leads` SET `status_id` = ?,`remark`=?,last_updated_date = ? WHERE employee_id = ? and status_id = (SELECT id from status where name = 'new')";
		int row = jdbcTemplate.update(query, new Object[]{remark.getStatus_id(),remark.getRemark(),new Date(),AppUtil.getEmployeeId()});
		if (row == 1) {
			return true;
		}
		return false;
		
	}

	@Override
	public boolean delete(Long id) {
		
		String query = "DELETE FROM leads WHERE lead_id = ?";
		int row = jdbcTemplate.update(query, new Object[]{id});
		if (row == 1) {
			return true;
		}
		return false;
		
	}
	@Override
	public boolean addToIntrested(InterestedLead lead) {
		String query = "UPDATE `leads` SET `status_id`=(SELECT id from status where name = 'interested'),`email` = ? ,`occupation_id`= ?,`last_updated_date`=?,`alternate_mobile`=?,`next_call`=?,`remark`=? WHERE `leads`.`lead_id` = ?";
		jdbcTemplate.update(query, new Object[]{lead.getEmail(),lead.getOccupation_id(),lead.getLast_updated_date(),lead.getAlternate_mobile(),lead.getNext_call(),lead.getRemark(),lead.getLead_id()});
		return true;
	}
	
	

	

		
	
	private void setAssigned(Long lead_id,Long employee_id) {
		String query = "UPDATE `leads` SET `assigned` = '1',`employee_id` = ? WHERE `leads`.`lead_id` = ?";
    	jdbcTemplate.update(query, new Object[]{employee_id,lead_id});
				
	}
	
	private boolean checkAssigned(Long employee_id) {
		String query = "SELECT COUNT(*) FROM leads WHERE employee_id = ? and status_id = (SELECT id from status where name = 'new') ";
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
			lead.setEmail(rs.getString("email"));
			lead.setAlternate_mobile(rs.getString("alternate_mobile"));
			lead.setCreation_date( rs.getDate("creation_date"));
			lead.setLast_updated_date(rs.getDate("last_updated_date"));
			lead.setEmployee_id(new Long(rs.getInt("employee_id")));
			lead.setNext_call(rs.getDate("next_call"));
			lead.setRemark(rs.getString("remark"));
			lead.setOccupation_id(rs.getInt("occupation_id"));
			return lead;
		}
	}


	


	

	


	


	

}
