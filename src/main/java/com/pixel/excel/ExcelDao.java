package com.pixel.excel;

import java.util.List;

public interface ExcelDao {
	public int uploadLeads(List<Lead> list);
	public boolean sheetExist(String file_hash);
	public boolean addSheet(ExcelSheet sheet);
}
