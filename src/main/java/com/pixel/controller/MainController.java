package com.pixel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pixel.util.AppUtil;

@Controller
public class MainController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(ModelMap model) {
		if(AppUtil.hasRole("admin")) {
			return "redirect:/ileads";
		}else {
			return "redirect:/fetch-lead";
		}
	}

}
