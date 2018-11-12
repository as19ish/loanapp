package com.pixel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pixel.bean.Business;


@Component
public class BusinessDaoImp implements BusinessDao {
    
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Override
	public void create(Business business) {
		String query = "INSERT INTO business ( `lead_id`,`name`,`firm`,`revenue`) VALUES(?,?,?,?)";
		Object[] params = new Object[] { business.getLead_id(),business.getName(),business.getFirm(),business.getRevenue() };
		int[] types = new int[] { Types.BIGINT,Types.VARCHAR,Types.VARCHAR,Types.BIGINT};
		jdbcTemplate.update(query, params, types);

	}
	
	@Override
	public Business get(long lead_id) {
		String query = "SELECT * FROM business  WHERE lead_id = ? limit 1";
		try {
		return jdbcTemplate.queryForObject(query,new Object[] {lead_id}, new BusinessRowMapper());
		}catch(Exception e) {
			return null;
		}
		
	}
	
	static class BusinessRowMapper implements RowMapper<Business>{

		@Override
		public Business mapRow(ResultSet rs, int rowNum) throws SQLException {
			Business business = new Business();
			business.setLead_id(rs.getLong("lead_id"));
			business.setName(rs.getString("name"));
			business.setFirm(rs.getString("firm"));
			business.setRevenue(rs.getLong("revenue"));
			return business;
		}
		
	}

}
