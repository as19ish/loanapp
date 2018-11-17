package com.pixel.service;

import java.util.List;

import com.pixel.bean.Comment;

public interface CommentService {
	
	public boolean add(Comment comment);
	public List<Comment> getAll(Long lead_id);
	

}
