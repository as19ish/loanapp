package com.pixel.dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pixel.bean.Status;

@Component
public class StatusDaoImp implements StatusDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<Status> getAllStatus() {
		String query = "SELECT * FROM `status`";
		List<Status> result = jdbcTemplate.query(query, new BeanPropertyRowMapper<Status>(Status.class));
		return result;
		
	}
	
	

}
