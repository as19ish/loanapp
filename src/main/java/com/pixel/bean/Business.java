package com.pixel.bean;

public class Business {
	
	private long id;
	private long lead_id;
	private String name;
	private String firm;
	private long revenue;
	
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFirm() {
		return firm;
	}
	public void setFirm(String firm) {
		this.firm = firm;
	}
	public long getRevenue() {
		return revenue;
	}
	public void setRevenue(long revenue) {
		this.revenue = revenue;
	}

}
