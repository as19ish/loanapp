package com.pixel.service;

import java.util.List;

import com.pixel.bean.Employee;

public interface AdminService {
	public boolean addEmployee(Employee employee);
	public Employee employeeByEmail(String emailId);
	public Integer countByEmail(String email);
	public Integer countByMobile(String mobile) ;
	public List<Employee> getEmployees();
	public boolean toggleStatus(int id);
	
	

}
