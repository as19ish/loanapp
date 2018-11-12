package com.pixel.bean;

import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;

public class InterestedLead {
	
	private long lead_id;
	private String email;
	private String mobile;
	private String alternate_mobile;
	private Date last_updated_date = new Date();
	private int occupation_id;
	@JsonFormat(shape = JsonFormat.Shape.STRING,pattern = "yyyy-MM-dd HH:mm", timezone="IST")
	private Date next_call;
	private String remark;
	private Business business;
	private Job job;
	private List<Eloan> eloan;
	private List<Ecard> ecard;
	
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
	public String getAlternate_mobile() {
		return alternate_mobile;
	}
	public void setAlternate_mobile(String alternate_mobile) {
		this.alternate_mobile = alternate_mobile;
	}
	public Date getLast_updated_date() {
		return last_updated_date;
	}
	public void setLast_updated_date(Date last_updated_date) {
		this.last_updated_date = last_updated_date;
	}
	public int getOccupation_id() {
		return occupation_id;
	}
	public void setOccupation_id(int occupation_id) {
		this.occupation_id = occupation_id;
	}
	public Date getNext_call() {
		return next_call;
	}
	public void setNext_call(Date next_call) {
		this.next_call = next_call;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Business getBusiness() {
		return business;
	}
	public void setBusiness(Business business) {
		this.business = business;
	}
	public Job getJob() {
		return job;
	}
	public void setJob(Job job) {
		this.job = job;
	}
	public List<Eloan> getEloan() {
		return eloan;
	}
	public void setEloan(List<Eloan> eloan) {
		this.eloan = eloan;
	}
	public List<Ecard> getEcard() {
		return ecard;
	}
	public void setEcard(List<Ecard> ecard) {
		this.ecard = ecard;
	}
	
		
	

}
