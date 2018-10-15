package com.pixel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
}
