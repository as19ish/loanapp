package com.pixel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pixel.bean.AuthEmployee;
import com.pixel.excel.Lead;
import com.pixel.service.LeadService;



@Controller
public class LeadsController {
	
	@Autowired
	private LeadService leadService;
	
	@RequestMapping(value = "/add-leads", method = RequestMethod.POST)
	public String addLead(ModelMap model, @ModelAttribute("lead") Lead lead) {

		
			boolean isAdded = leadService.addLead(lead);
			if (isAdded) {
				model.addAttribute("message", "Lead added sucessfully");
			} else {
				model.addAttribute("error", "Some thing went wrong!");
			}
		
		return "addlead";
	}
	@RequestMapping(value = "/fetch-lead", method = RequestMethod.GET)
	public String fetchLead(ModelMap model) {
		AuthEmployee current_employee = (AuthEmployee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("lead",leadService.fetchLead(current_employee.getEmployee_id()));
		return "fetchlead";
	}
	
	@RequestMapping(value = "/change_lead_status/{id}",method=RequestMethod.GET)
	@ResponseBody
	public boolean changeLeadStatus(@PathVariable("id") int id){
		String status;
		if (id == 1) {
			status = "interested";
		}else if(id == 2) {
			status = "not intrested";
		}else {
			return false;
		}
		AuthEmployee current_employee = (AuthEmployee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return leadService.changeStatus(current_employee.getEmployee_id(),status);
	}
}
