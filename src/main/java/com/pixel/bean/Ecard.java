package com.pixel.bean;

public class Ecard {
	
	private Long id;
	private Long lead_id;
	private String issuing_bank;
	private int card_limit;
	private int card_used;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getLead_id() {
		return lead_id;
	}
	public void setLead_id(Long lead_id) {
		this.lead_id = lead_id;
	}
	public String getIssuing_bank() {
		return issuing_bank;
	}
	public void setIssuing_bank(String issuing_bank) {
		this.issuing_bank = issuing_bank;
	}
	public int getCard_limit() {
		return card_limit;
	}
	public void setCard_limit(int card_limit) {
		this.card_limit = card_limit;
	}
	public int getCard_used() {
		return card_used;
	}
	public void setCard_used(int card_used) {
		this.card_used = card_used;
	}
	
	
	
}
