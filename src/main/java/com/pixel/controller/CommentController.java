package com.pixel.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pixel.bean.Comment;
import com.pixel.service.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService commentService;
	
	@RequestMapping(value = "/comments/add",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> add(@RequestBody Comment comment){
		HashMap<String, String> map = new HashMap<>();
		if(commentService.add(comment)) {
			map.put("status", "success");     
	        return map;
		}else {
			map.put("status", "error");     
	        return map;
		}
		
	}

}
