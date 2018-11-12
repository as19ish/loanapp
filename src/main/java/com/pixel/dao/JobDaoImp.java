package com.pixel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pixel.bean.Job;

@Component
public class JobDaoImp implements JobDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
	@Override
	public void create(Job job) {
		String query = "INSERT INTO job ( `lead_id`,`company_name`,`salary`) VALUES(?,?,?)";
		Object[] params = new Object[] { job.getLead_id(),job.getCompany_name(),job.getSalary() };
		int[] types = new int[] { Types.BIGINT,Types.VARCHAR,Types.BIGINT};
		jdbcTemplate.update(query, params, types);
		
		
	}
	@Override
	public Job get(long lead_id) {
		String query = "SELECT * FROM job  WHERE lead_id = ? limit 1";
		try {
		return jdbcTemplate.queryForObject(query,new Object[] {lead_id}, new JobRowMapper());
		}catch(Exception e) {
			return null;
		}
		
	}
	
	static class  JobRowMapper implements RowMapper<Job>{

		@Override
		public Job mapRow(ResultSet rs, int rowNum) throws SQLException {
			Job job = new Job();
			job.setLead_id(rs.getLong("lead_id"));
			job.setCompany_name(rs.getString("company_name"));
			job.setSalary(rs.getLong("salary"));
			return job;
		}
		
	}

}
