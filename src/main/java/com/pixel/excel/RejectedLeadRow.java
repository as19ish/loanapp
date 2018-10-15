package com.pixel.excel;

public class RejectedLeadRow {
	
	private String rowNumber;
	private String reason;
	
	public RejectedLeadRow(){
		
	}
	
	public RejectedLeadRow(String rowNumber, String reason) {
		super();
		this.rowNumber = rowNumber;
		this.reason = reason;
	}

	public String getRowNumber() {
		return rowNumber;
	}
	public void setRowNumber(String rowNumber) {
		this.rowNumber = rowNumber;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
}
