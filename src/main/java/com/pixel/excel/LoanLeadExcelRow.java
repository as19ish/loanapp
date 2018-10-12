package com.pixel.excel;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;

public class LoanLeadExcelRow {
	
	@ExcelRow
	private int rowIndex;
	
	@ExcelCellName("Name")
	private String name;
	
	@ExcelCellName("Mobile No")
	private String mobile;
	
	@ExcelCellName("Official Email id")
	private String email;

	public int getRowIndex() {
		return rowIndex;
	}

	public void setRowIndex(int rowIndex) {
		this.rowIndex = rowIndex;
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
}
