package com.pixel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pixel.service.AdminService;
import com.pixel.service.LeadService;
import com.pixel.util.AppUtil;

@Controller
public class WebsiteNavigationController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private LeadService leadService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		if(AppUtil.hasRole("admin")) {
		model.addAttribute("emplist",adminService.getEmployees());
		return "index";
		}else {
			return "redirect:/fetch-lead";
		}
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
	@RequestMapping(value = "/add-leads", method = RequestMethod.GET)
	public String addLeads(ModelMap model) {
		return "addlead";
	}
	@RequestMapping(value = "/ileads", method = RequestMethod.GET)
	public String getInterestedLead(ModelMap model) {
		model.addAttribute("ileads",leadService.getInterestedLead());
		return "ileads";
	}
	
}
