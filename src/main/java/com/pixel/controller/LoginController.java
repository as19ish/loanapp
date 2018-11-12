package com.pixel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pixel.bean.Employee;
import com.pixel.service.AdminService;

@Controller
public class LoginController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping("/login")
	public String loginPage(){
		return "login";
	}
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(ModelMap model, @ModelAttribute("employee") Employee employee) {

		if (adminService.countByEmail(employee.getEmail()) > 0) {
			model.addAttribute("error", "Email already exist!");
		} else {
			boolean isAdded = adminService.addEmployee(employee);
			if (isAdded) {
				model.addAttribute("message", "Employee added sucessfully");
			} else {
				model.addAttribute("error", "Some thing went wrong!");
			}
		}
		return "addemployee";
	}
}
