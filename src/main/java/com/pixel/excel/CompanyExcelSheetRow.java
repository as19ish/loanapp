package com.pixel.excel;

import com.poiji.annotation.ExcelCellName;
import com.poiji.annotation.ExcelRow;

public class CompanyExcelSheetRow {
	
	@ExcelRow
	private int rowIndex;
	
	@ExcelCellName("Company Name")
	private String name;

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

}
