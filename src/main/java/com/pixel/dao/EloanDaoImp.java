package com.pixel.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
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
		
	
		      String sql = "INSERT INTO `eloans` ( `leads_id`, `type`, `amount`, `emi`, `company`) VALUES ( ?,?,?,?,?)";
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
					}

					@Override
					public int getBatchSize() {
						return eloans.size();
					}
				});
				return true;
	}
}

