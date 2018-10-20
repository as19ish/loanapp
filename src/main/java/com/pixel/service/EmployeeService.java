package com.pixel.service;

import com.pixel.bean.AuthEmployee;
import com.pixel.bean.Employee;

public interface EmployeeService {
	
	Employee getByEmail(String email);
	AuthEmployee prepareAuthUser(Employee employee);
}
