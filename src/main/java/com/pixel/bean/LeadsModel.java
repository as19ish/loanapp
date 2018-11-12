package com.pixel.bean;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class LeadsModel {

	@Id
	private Long lead_id;
	private String name;
	private String mobile;
	private Date creation_date;
	private Date last_updated_date;
	private String status;
	private Date next_call;

	private Integer totalRecords;

	@Transient
	private Integer rn;

	public Long getLeadID() {
		return lead_id;
	}

	public void setLeadID(Long leadID) {
		this.lead_id = leadID;
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

	public Date getCreationDate() {
		return creation_date;
	}

	public void setCreationDate(Date creationDate) {
		this.creation_date = creationDate;
	}

	public Date getLastUpdatedDate() {
		return last_updated_date;
	}

	public void setLastUpdatedDate(Date lastUpdatedDate) {
		this.last_updated_date = lastUpdatedDate;
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

	public Integer getTotalRecords() {
		return totalRecords;
	}

	public void setTotalRecords(Integer totalRecords) {
		this.totalRecords = totalRecords;
	}

	public Integer getRn() {
		return rn;
	}

	public void setRn(Integer rn) {
		this.rn = rn;
	}
		

	

}
