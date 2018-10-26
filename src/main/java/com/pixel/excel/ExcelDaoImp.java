package com.pixel.excel;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

@Component
public class ExcelDaoImp implements ExcelDao {
	@Autowired
	JdbcTemplate jdbcTemplate;

//	@Override
//	public int uploadLeads(List<Lead> leads) {
//
//		String sql = "INSERT INTO leads " + "(name, mobile, creation_date,last_updated_date,status) VALUES (?, ?, ?,?,?)";
//
//		jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
//
//			@Override
//			public void setValues(PreparedStatement ps, int i) throws SQLException {
//				Lead lead = leads.get(i);
//				ps.setString(1, lead.getName());
//				ps.setString(2, lead.getMobile());
//				ps.setTimestamp(3, new Timestamp(new java.util.Date().getTime()));
//				ps.setTimestamp(4, new Timestamp(new java.util.Date().getTime()));
//				ps.setString(5, "new");
//			}
//
//			@Override
//			public int getBatchSize() {
//				return leads.size();
//			}
//		});
//		return leads.size();
//	}
	@Override
	public int uploadLeads(List<Lead> leads) {
	    final int batchSize = 5000;
	    int size = 0;
	    String sql = "INSERT IGNORE INTO leads " + "(name, mobile, creation_date,last_updated_date,status) VALUES (?, ?, ?,?,?)";


	    for (int j = 0; j < leads.size(); j += batchSize) {

	        final List<Lead> batchList = leads.subList(j, j + batchSize > leads.size() ? leads.size() : j + batchSize);

	       jdbcTemplate.batchUpdate(sql,
	            new BatchPreparedStatementSetter() {
	                @Override
	                public void setValues(PreparedStatement ps, int i)
	                        throws SQLException {
	                	Lead lead = leads.get(i);
	    				ps.setString(1, lead.getName());
	    				ps.setString(2, lead.getMobile());
	    				ps.setTimestamp(3, new Timestamp(new java.util.Date().getTime()));
	    				ps.setTimestamp(4, new Timestamp(new java.util.Date().getTime()));
	    				ps.setString(5, "new");
	                }

	                @Override
	    			public int getBatchSize() {
	    				return batchList.size();
	    			}
	            });
	        

	    }
	    return leads.size();
	}

}
