package com.pixel.excel;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;


import org.springframework.stereotype.Component;

import com.poiji.bind.Poiji;
import com.poiji.exception.PoijiExcelType;

@Component("sheetToCompanyContainer")
public class ExcelSheetToCompanyContainer implements ExcelSheetToCompany {
	
	private static final String REASON_NULL_NAME = "Company Name is Empty";
	private static final String REASON_LENGTH_EXCEED = "Company Name Length Exceed";
	
	
	@Override
	public CompanyContainer getCompanyList(InputStream inputStream) {
		List<CompanyExcelSheetRow> rowList =  Poiji.fromExcel(inputStream, PoijiExcelType.XLS, CompanyExcelSheetRow.class);
		return populateCompanyList(rowList);
	}
	
	CompanyContainer populateCompanyList(List<CompanyExcelSheetRow> rowList){
		CompanyContainer container = new CompanyContainer();
		List<Company> acceptedCompany = new ArrayList<Company>();
		List<RejectedLeadRow> rejectedCompany = new ArrayList<RejectedLeadRow>();
		
		for(CompanyExcelSheetRow row : rowList){
			if(row.getName() == null || row.getName().isEmpty()){
				rejectedCompany.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_NULL_NAME));
				continue;
			}
			if(row.getName().length() > 256) {
				rejectedCompany.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_LENGTH_EXCEED));
				continue;
			}
									
			Company company = new Company();
			company.setName(row.getName());	
			acceptedCompany.add(company);
		}
		container.setAcceptedCompany(acceptedCompany);
		container.setRejectedList(rejectedCompany);
		return container;
	}
	
}
