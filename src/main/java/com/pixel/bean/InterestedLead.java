package com.pixel.bean;

import java.util.List;

public class InterestedLead {
	
	private long lead_id;
	private String email;
	private String mobile;
	private String company;
	private String salary;
	private String alternate_mobile;
	private List<Eloan> eloan;
	
	public long getLead_id() {
		return lead_id;
	}
	public void setLead_id(long lead_id) {
		this.lead_id = lead_id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getAlternate_mobile() {
		return alternate_mobile;
	}
	public void setAlternate_mobile(String alternate_mobile) {
		this.alternate_mobile = alternate_mobile;
	}
	public List<Eloan> getEloan() {
		return eloan;
	}
	public void setEloan(List<Eloan> eloan) {
		this.eloan = eloan;
	}
	

}
