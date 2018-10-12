package com.pixel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pixel.service.AdminService;

@Controller
public class WebsiteNavigationController {
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("emplist",adminService.getEmployees());
		return "index";
	}

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
	@RequestMapping(value = "/inner", method = RequestMethod.GET)
	public String inner(ModelMap model) {
		return "inner";
	}
}
