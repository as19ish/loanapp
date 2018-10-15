package com.pixel.excel;

import java.io.InputStream;

public interface ExcelSheetToLead {
	
	LeadsContainer getLeadList(InputStream inputStream);
}
