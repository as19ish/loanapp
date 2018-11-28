package com.pixel.excel;

import java.util.List;

public class CompanyContainer {
	
	private List<Company> acceptedCompany;
	private List<RejectedLeadRow> rejectedList;
	
	public List<Company> getAcceptedCompany() {
		return acceptedCompany;
	}
	public void setAcceptedCompany(List<Company> acceptedCompany) {
		this.acceptedCompany = acceptedCompany;
	}
	public List<RejectedLeadRow> getRejectedList() {
		return rejectedList;
	}
	public void setRejectedList(List<RejectedLeadRow> rejectedList) {
		this.rejectedList = rejectedList;
	}

}
