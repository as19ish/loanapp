package com.pixel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import com.pixel.bean.Employee;
import com.pixel.dao.AdminDao;

@Component
public class AdminServiceImp implements AdminService {
	
	
	@Autowired
	private AdminDao adminDoa;

	@Override
	public boolean addEmployee(Employee employee) {
		
		boolean isAdded = adminDoa.addEmployee(employee);
		return isAdded;
	}

	@Override
	public Employee employeeByEmail(String email) {
		Employee employee=adminDoa.employeeByEmail(email);
		return employee;
	}

	@Override
	public Integer countByEmail(String email) {
		return adminDoa.countByEmail(email);
		
	}

	@Override
	public Integer countByMobile(String mobile) {
		return adminDoa.countByMobile(mobile);
	}

	@Override
	public List<Employee> getEmployees() {
		return adminDoa.getEmployees();
	}

	@Override
	public boolean toggleStatus(int id) {
		return adminDoa.toggleStatus(id);
	}
	
	

}
