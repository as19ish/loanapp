package com.pixel.dao;

import java.util.List;

import com.pixel.bean.Comment;


public interface CommentDao {
	
	public boolean add(Comment comment);
	public List<Comment> getAll(Long lead_id);
	public List<Comment> getAllByEmployeeId(Long lead_id,Long employee_id);

}
