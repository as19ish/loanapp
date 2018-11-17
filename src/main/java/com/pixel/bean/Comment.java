package com.pixel.bean;

import java.util.Date;

public class Comment {
	
	private long id;
	private long lead_id;
	private long employee_id;
	private String name;
	private String comment;
	private Date creation_date = new Date();
	private Date last_updated_date = new Date();
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
	public long getEmployee_id() {
		return employee_id;
	}
	public void setEmployee_id(long employee_id) {
		this.employee_id = employee_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
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

}
