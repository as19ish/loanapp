package com.pixel.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pixel.bean.Eloan;
import com.pixel.bean.InterestedLead;

@Component
public class EloanDaoImp implements EloanDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	@Override
	public boolean create(InterestedLead lead) {
		
	
		      String sql = "INSERT INTO `eloans` ( `lead_id`, `type`, `amount`, `emi`, `company`,`tenure`,`repayment`) VALUES ( ?,?,?,?,?,?,?)";
              List<Eloan> eloans = lead.getEloan();
			  jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {

					@Override
					public void setValues(PreparedStatement ps, int i) throws SQLException {
						Eloan eloan = eloans.get(i);
						ps.setLong(1, eloan.getLead_id());
						ps.setString(2, eloan.getType());
						ps.setString(3,eloan.getAmount());
						ps.setString(4,eloan.getEmi());
						ps.setString(5, eloan.getCompany());
						ps.setInt(6,eloan.getTenure());
						ps.setInt(7, eloan.getRepayment());
					}

					@Override
					public int getBatchSize() {
						return eloans.size();
					}
				});
				return true;
	}
	@Override
	public List<Eloan> get(Long lead_id) {
		String query = "SELECT * FROM eloans WHERE lead_id = ?";
		List<Eloan> result = jdbcTemplate.query(query,new Object[]{lead_id}, new BeanPropertyRowMapper<Eloan>(Eloan.class));
		return result;
	}
}

