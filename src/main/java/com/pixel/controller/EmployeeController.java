package com.pixel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pixel.service.AdminService;



@Controller
public class EmployeeController {
	@Autowired
	private AdminService adminService;
	
	
	

	@RequestMapping(value = "/addemployee", method = RequestMethod.GET)
	public String addemployee(ModelMap model) {
		return "addemployee";
	}
	@RequestMapping(value = "/emplist", method = RequestMethod.GET)
	public String employeelist(ModelMap model) {
		model.addAttribute("emplist",adminService.getEmployees());
		return "emplist";
	}
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public String profile(ModelMap model) {
		return "profile";
	}
	
	@RequestMapping(value = "/toggle_status/{id}",method=RequestMethod.GET)
	@ResponseBody
	public boolean toggleStatus(@PathVariable("id") int id){
		
		return adminService.toggleStatus(id);
	}
	
	
	
}
