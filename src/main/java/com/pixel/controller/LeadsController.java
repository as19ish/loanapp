package com.pixel.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pixel.bean.AuthEmployee;
import com.pixel.bean.InterestedLead;
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
	
	@RequestMapping(value = "/leads/notinterested",method=RequestMethod.GET)
	@ResponseBody
	public boolean changeLeadStatus(){
		String status = "not interested";
		AuthEmployee current_employee = (AuthEmployee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		return leadService.changeStatus(current_employee.getEmployee_id(),status);
	}
	@RequestMapping(value = "/leads/delete/{id}",method=RequestMethod.GET)
	@ResponseBody
	public boolean deleteLead(@PathVariable("id") Long id){
		
		return leadService.delete(id);
	}
	@RequestMapping(value = "/leads/interested", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addToIntersted(@RequestBody InterestedLead lead) {
        leadService.addToInterested(lead);
        HashMap<String, String> map = new HashMap<>();
        map.put("status", "success");     
        return map;
    }
}
