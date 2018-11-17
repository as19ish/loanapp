package com.pixel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.pixel.bean.Comment;
import com.pixel.dao.CommentDao;
import com.pixel.util.AppUtil;

@Component
public class CommentServiceImpl implements CommentService {
    
	@Autowired
	private CommentDao commentDao;
	@Override
	public boolean add(Comment comment) {
		return commentDao.add(comment);
	}

	@Override
	public List<Comment> getAll(Long lead_id) {
		if(AppUtil.hasRole("admin")) {
			return commentDao.getAll(lead_id);
		}else {
			return commentDao.getAllByEmployeeId(lead_id, AppUtil.getEmployeeId());
		}
	}

}
