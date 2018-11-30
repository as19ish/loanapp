package com.pixel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import com.pixel.bean.Employee;

@Component
public class AdminDaoImp implements AdminDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
    
	@Override
	public boolean addEmployee(Employee employee) {
		boolean isAdded = false;
		String query = "INSERT INTO employee (name ,email,mobile,password,date,status,type)" + " VALUES (?, ?, ?, ?,?,?,?)";
		Object[] params = new Object[] { employee.getName(), employee.getEmail(), employee.getMobile(),
				employee.getPassword(), employee.getDate(), employee.getStatus(),employee.getType() };
		int[] types = new int[] { Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.VARCHAR, Types.TIMESTAMP,
				Types.VARCHAR,Types.VARCHAR };
		int row = jdbcTemplate.update(query, params, types);
		System.out.println(row + " row inserted.");
		if (row == 1) {
			isAdded = true;
		}
		return isAdded;
	}

	@Override
	public Employee employeeByEmail(String email) throws EmptyResultDataAccessException {
		Employee employee = null;
		String query = "select  employee_id as id,name,email,mobile,password,date,status,type from employee WHERE EMAIL = ? limit 1";
		try {
			employee = jdbcTemplate.queryForObject(query, new Object[] { email }, new EmployeeRowMapper());
		} catch (Exception e) {
            
		}
		return employee;
	}
	
	@Override
	public Integer countByEmail(String email) {
		String query = "SELECT COUNT(*) FROM employee WHERE email = ? ";
		return jdbcTemplate.queryForObject(query, new Object[]{email}, Integer.class);
	}

	@Override
	public Integer countByMobile(String mobile) {
		String query = "SELECT COUNT(*) FROM employee WHERE mobile = ? ";
		return jdbcTemplate.queryForObject(query, new Object[]{mobile}, Integer.class);
	}
	
	@Override
	public List<Employee> getEmployees() {
		String sql = "select  employee_id as id,name,email,mobile,password,date,status,type from employee";
		List<Employee> employees = jdbcTemplate.query(sql, new BeanPropertyRowMapper<Employee>(Employee.class));
		return employees;
	}
	@Override
    public boolean toggleStatus(int id) {
    	
    	String query = "UPDATE employee SET status =CASE WHEN status = 'active' THEN 'inactive' ELSE 'active' END where employee_id = ?";
    	int row = jdbcTemplate.update(query, new Object[]{id});
		if (row == 1) {
			return true;
		}
		return false;
    	
    }

	static class EmployeeRowMapper implements RowMapper<Employee> {

		@Override
		public Employee mapRow(ResultSet rs, int n) throws SQLException {
			Employee employee = new Employee();
			employee.setId(new Long(rs.getInt("id")));
			employee.setName(rs.getString("name"));
			employee.setEmail(rs.getString("email"));
			employee.setMobile(rs.getString("mobile"));
			employee.setPassword(rs.getString("password"));
			employee.setStatus(rs.getString("status"));
			employee.setDate(rs.getDate("date"));
			employee.setType(rs.getString("type"));
			return employee;
		}
	}

}
