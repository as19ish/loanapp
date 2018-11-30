package com.pixel.dao;

import java.sql.Types;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pixel.excel.Company;

@Component
public class CompanyDaoImp implements CompanyDao {
    @Autowired
    private JdbcTemplate jdbcTemplate;
    
	@Override
	public boolean add(Company campany) {
		String query = "INSERT INTO `company`(name,creation_date) value(?,?)";
		Object[] params = new Object[]{campany.getName(),new Date()};
		int[] types = new int[] { Types.VARCHAR, Types.TIMESTAMP };
		int row = jdbcTemplate.update(query, params, types);
		if (row == 1) {
			return true;
		}
		return false;
	}

	@Override
	public boolean delete(Long id) {
		String query = "DELETE FROM company WHERE id = ?";
		int row = jdbcTemplate.update(query, new Object[]{id});
		if (row == 1) {
			return true;
		}
		return false;
	}

}
