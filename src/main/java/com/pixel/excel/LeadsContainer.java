package com.pixel.excel;

import java.util.List;

public class LeadsContainer {
	
	private List<Lead> acceptedLeads;
	private List<RejectedLeadRow> rejectedLeads;
	
	public List<Lead> getAcceptedLeads() {
		return acceptedLeads;
	}
	public void setAcceptedLeads(List<Lead> acceptedLeads) {
		this.acceptedLeads = acceptedLeads;
	}
	public List<RejectedLeadRow> getRejectedLeads() {
		return rejectedLeads;
	}
	public void setRejectedLeads(List<RejectedLeadRow> rejectedLeads) {
		this.rejectedLeads = rejectedLeads;
	}
}
