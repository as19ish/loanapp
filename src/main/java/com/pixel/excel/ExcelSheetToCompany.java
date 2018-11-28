package com.pixel.excel;

import java.io.InputStream;

public interface ExcelSheetToCompany {

	CompanyContainer getCompanyList(InputStream inputStream);
}
