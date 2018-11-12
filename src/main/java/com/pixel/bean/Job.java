package com.pixel.bean;

public class Job {
	
	private long id;
	private long lead_id;
	private String company_name;
	private long salary;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getLead_id() {
		return lead_id;
	}
	public void setLead_id(long lead_id) {
		this.lead_id = lead_id;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public long getSalary() {
		return salary;
	}
	public void setSalary(long salary) {
		this.salary = salary;
	}
	

}
