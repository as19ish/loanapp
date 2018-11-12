package com.pixel.excel;

import java.util.Date;

public class Lead {
	
	private Long lead_id;
	private String name;
	private String mobile;
	private String email;
	private String alternate_mobile;
	private int occupation_id;
	private String remark;
	private Date creation_date = new Date();
	private Date last_updated_date = new Date();
	private int status_id = 1;
	private String status; 
	private Date next_call;
	private Long employee_id;
	private String employee_name;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAlternate_mobile() {
		return alternate_mobile;
	}
	public void setAlternate_mobile(String alternate_mobile) {
		this.alternate_mobile = alternate_mobile;
	}
	public int getOccupation_id() {
		return occupation_id;
	}
	public void setOccupation_id(int occupation_id) {
		this.occupation_id = occupation_id;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
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
	public int getStatus_id() {
		return status_id;
	}
	public void setStatus_id(int status_id) {
		this.status_id = status_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Date getNext_call() {
		return next_call;
	}
	public void setNext_call(Date next_call) {
		this.next_call = next_call;
	}
	public Long getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(Long employee_id) {
		this.employee_id = employee_id;
	}
	public String getEmployee_name() {
		return employee_name;
	}
	public void setEmployee_name(String employee_name) {
		this.employee_name = employee_name;
	}
	
	
	
}
