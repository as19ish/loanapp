package com.pixel.excel;

import java.util.Date;

public class Lead {
	
	private Long lead_id;
	private String name;
	private String mobile;
	private Date creation_date = new Date();
	private Date last_updated_date = new Date();
	private int status_id = 1;
	private String status; 
	private Long employee_id;
	
	public Long getLead_id() {
		return lead_id;
	}
	public void setLead_id(Long lead_id) {
		this.lead_id = lead_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public Date getCreation_date() {
		return creation_date;
	}
	public void setCreation_date(Date creation_date) {
		this.creation_date = creation_date;
	}
	public Date getLast_updated_date() {
		return last_updated_date;
	}
	public void setLast_updated_date(Date last_updated_date) {
		this.last_updated_date = last_updated_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getStatus_id() {
		return status_id;
	}
	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	public Long getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Long employee_id) {
		this.employee_id = employee_id;
	}
	
	
}
