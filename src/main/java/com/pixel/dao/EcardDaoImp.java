package com.pixel.dao;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pixel.bean.Ecard;
import com.pixel.bean.InterestedLead;
@Component
public class EcardDaoImp implements EcardDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public boolean create(InterestedLead lead) {
		 String sql = "INSERT INTO `ecards` ( `leads_id`, `issuing_bank`, `card_limit`, `card_used` ) VALUES ( ?,?,?,?)";
         List<Ecard> eloans = lead.getEcard();
		  jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					Ecard ecard = eloans.get(i);
					ps.setLong(1, ecard.getLead_id());
					ps.setString(2, ecard.getIssuing_bank());
					ps.setInt(3,ecard.getLimit());
					ps.setInt(4, ecard.getUsed());
				}

				@Override
				public int getBatchSize() {
					return eloans.size();
				}
			});
			return true;
	}

}
