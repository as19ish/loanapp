package com.pixel.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.pixel.bean.Comment;
import com.pixel.util.AppUtil;

@Component
public class CommentDaoImp implements CommentDao {
    
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean add(Comment comment) {
		String query = "INSERT INTO comments(lead_id,employee_id,comment,creation_date,last_updated_date) values(?,?,?,?,?)";
		int row = jdbcTemplate.update(query,new Object[] {comment.getLead_id(),AppUtil.getEmployeeId(),comment.getComment(),comment.getCreation_date(),comment.getLast_updated_date()});
		if(row==1) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public List<Comment> getAll(Long lead_id) {
		String query = "SELECT comments.lead_id,comments.employee_id,comments.comment,comments.creation_date,employee.name as name FROM comments INNER JOIN  employee on comments.employee_id=employee.employee_id where comments.lead_id =? ORDER BY comments.id ASC";
		List<Comment> comments = jdbcTemplate.query(query,new Object[] {lead_id},new BeanPropertyRowMapper<Comment>(Comment.class));
		return comments;
	}

	@Override
	public List<Comment> getAllByEmployeeId(Long lead_id, Long employee_id) {
		String query = "SELECT comments.lead_id,comments.employee_id,comments.comment,comments.creation_date,employee.name as name FROM comments INNER JOIN  employee on comments.employee_id=employee.employee_id where comments.lead_id =? and ( employee.employee_id=? or employee.type='admin') ORDER BY comments.id ASC";
		List<Comment> comments = jdbcTemplate.query(query,new Object[] {lead_id,employee_id},new BeanPropertyRowMapper<Comment>(Comment.class));
		return comments;
	}

}
