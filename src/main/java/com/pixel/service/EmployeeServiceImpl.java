package com.pixel.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Service;

import com.pixel.bean.AuthEmployee;
import com.pixel.bean.Employee;
import com.pixel.dao.AdminDao;

@Service
public class EmployeeServiceImpl implements EmployeeService {
    
	@Autowired
	private AdminDao adminDao;
	
	@Override
	public Employee getByEmail(String email) {
              
		Employee employee = adminDao.employeeByEmail(email);
		return employee;
		
	}

	@Override
	public AuthEmployee prepareAuthUser(Employee employee) {
		
		Set<GrantedAuthority> authorities = new HashSet<GrantedAuthority>();
		authorities.add(new SimpleGrantedAuthority(employee.getType()));
		
		AuthEmployee authUser = new AuthEmployee(employee.getEmail(), 
				employee.getPassword(), employee.getStatus().equals("active"), true, true, true, authorities);
		authUser.setName(employee.getName());
		authUser.setEmployee_id(employee.getId());
		return authUser;
	}

}
