package com.pixel.bean;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author pavan.solapure
 *
 */
@Entity
@Table(name = "leads")
public class Leads {

	@Id
	@Column(name = "leadsID")
	private Long lead_id;
	
	@Column(name = "NAME")
	private String name;
	
	@Column(name = "MOBILE")
	private String mobile;
    
	@Column(name = "creationDate")
	private Date creation_date;
	
	@Column(name = "lastUpdatedDate")
	private Date last_update_date;
	
	@Column(name = "STATUS")
	private String status;
	
	@Column(name = "employeeID")
	private Long employee_id;

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
		return last_update_date;
	}

	public void setLastUpdatedDate(Date lastUpdatedDate) {
		this.last_update_date = lastUpdatedDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Long getEmployeeID() {
		return employee_id;
	}

	public void setEmployeeID(Long employeeID) {
		this.employee_id = employeeID;
	}
	
	
}