package com.pixel.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.pixel.bean.Employee;
import com.pixel.service.EmployeeService;

@Service("customEmployeeDetailsService")
public class CustomEmployeeDetailsService implements UserDetailsService {
	
	@Autowired
	private EmployeeService employeeService;
	
	@Override
	public UserDetails loadUserByUsername(String username)
			throws UsernameNotFoundException {
		Employee employee = employeeService.getByEmail(username);
		return employeeService.prepareAuthUser(employee);
	}

}
