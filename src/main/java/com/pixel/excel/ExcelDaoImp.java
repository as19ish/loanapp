package com.pixel.excel;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;



@Component
public class ExcelDaoImp implements ExcelDao {
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Transactional()
	@Override
	public int uploadCompany(List<Company> company) {
		final int batchSize = 5000;
	    String sql = "INSERT IGNORE INTO company(name, creation_date) VALUES (?, ?)";
	    

	    for (int j = 0; j < company.size(); j += batchSize) {

	        final List<Company> batchList = company.subList(j, j + batchSize > company.size() ? company.size() : j + batchSize);
            
	       jdbcTemplate.batchUpdate(sql,
	            new BatchPreparedStatementSetter() {
	                @Override
	                public void setValues(PreparedStatement ps, int i)
	                        throws SQLException {
	                	Company company = batchList.get(i);
	                	ps.setString(1, company.getName());
	    				ps.setTimestamp(2, new Timestamp(new java.util.Date().getTime()));
	    				
	                }

	                @Override
	    			public int getBatchSize() {
	    				return batchList.size();
	    			}
	            });
	        

	    }
	    return company.size();
	}
	@Transactional()
	@Override
	public int uploadLeads(List<Lead> leads) {
	    final int batchSize = 5000;
	    String sql = "INSERT IGNORE INTO leads " + "(name, mobile, creation_date,last_updated_date,status_id) VALUES (?, ?, ?,?,(SELECT id from status where name = 'new'))";
	    

	    for (int j = 0; j < leads.size(); j += batchSize) {

	        final List<Lead> batchList = leads.subList(j, j + batchSize > leads.size() ? leads.size() : j + batchSize);
            
	       jdbcTemplate.batchUpdate(sql,
	            new BatchPreparedStatementSetter() {
	                @Override
	                public void setValues(PreparedStatement ps, int i)
	                        throws SQLException {
	                	Lead lead = batchList.get(i);
	                	ps.setString(1, lead.getName());
	    				ps.setString(2, lead.getMobile());
	    				ps.setTimestamp(3, new Timestamp(new java.util.Date().getTime()));
	    				ps.setTimestamp(4, new Timestamp(new java.util.Date().getTime()));
	                }

	                @Override
	    			public int getBatchSize() {
	    				return batchList.size();
	    			}
	            });
	        

	    }
	    return leads.size();
	}

	@Override
	public boolean sheetExist(String file_hash) {
		String query = "SELECT COUNT(*) FROM excel_sheet where file_hash = ?";
		int result = jdbcTemplate.queryForObject(query, new Object[]{file_hash}, Integer.class);
		
		if(result==0) {
			return false;
		}
		return true;
	}

	@Override
	public boolean addSheet(ExcelSheet sheet) {	
		String query = "INSERT INTO excel_sheet(file_name,file_hash,sheet_type,total_added,errors,creation_date,expire_date) VALUES(?,?,?,?,'[{}]',?,?)";
		int result = jdbcTemplate.update(query,new Object[]{sheet.getFile_name(),sheet.getFile_hash(),sheet.getSheet_type(),sheet.getTotal_added(),sheet.getCreation_date(),sheet.getExpire_date()});
		if(result == 1) {
			return true;
		}
		return false;
	}

	
}
