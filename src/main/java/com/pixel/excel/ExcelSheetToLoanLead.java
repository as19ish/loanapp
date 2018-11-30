package com.pixel.excel;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import com.poiji.bind.Poiji;
import com.poiji.exception.PoijiExcelType;

@Component("sheetToLoanLead")
public class ExcelSheetToLoanLead implements ExcelSheetToLead {
	
	private static final String REASON_NULL_NAME = "Name is empty";
	private static final String REASON_NAME_LENGTH_EXCEEDS = "Lenght of name is exceeds";
	private static final String REASON_NULL_MOBILE = "Mobile number is empty";
	private static final String REASON_INVALID_MOBILE = "Mobile No Not Valid";
	private static final String REASON_DUPLICATE_MOBILE = "Mobile number is duplicate in sheet";
	
	@Override
	public LeadsContainer getLeadList(InputStream inputStream) {
		List<LoanLeadExcelRow> rowList =  Poiji.fromExcel(inputStream, PoijiExcelType.XLS, LoanLeadExcelRow.class);
		return populateLoanLeadList(rowList);
	}
	
	LeadsContainer populateLoanLeadList(List<LoanLeadExcelRow> rowList){
		HashSet<String> set = new HashSet<>();
		List<Lead> acceptedLeads = new ArrayList<Lead>();
		LeadsContainer container = new LeadsContainer();
		List<RejectedLeadRow> rejectedLeads = new ArrayList<RejectedLeadRow>();
		
		for(LoanLeadExcelRow row : rowList){
			
			if(row.getName() == null || row.getName().isEmpty()) {
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_NULL_NAME));
				continue;
			}
			if(row.getName().length()>100) {
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_NAME_LENGTH_EXCEEDS));
				continue;
			}
			if(row.getMobile() == null || row.getMobile().isEmpty()){
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_NULL_MOBILE));
				continue;
			}
			
			if(!isPhoneNumberValid(row.getMobile())){
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_INVALID_MOBILE));
				continue;
			}
			if(!set.add(row.getMobile())) {
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_DUPLICATE_MOBILE));
				continue;
			}
									
			Lead lead = new Lead();
			lead.setName(row.getName());
			lead.setMobile(row.getMobile());
			
			acceptedLeads.add(lead);
		}
		container.setAcceptedLeads(acceptedLeads);
		container.setRejectedLeads(rejectedLeads);
		return container;
	}
	public boolean isPhoneNumberValid(String phoneNumber){
	     boolean isValid = false;

	  
	    String expression = "^((\\+|00)(\\d{1,3})[\\s-]?)?(\\d{10})$";
	    CharSequence inputStr = phoneNumber;
	    Pattern pattern = Pattern.compile(expression);
	    Matcher matcher = pattern.matcher(inputStr);
	    if(matcher.matches()){
	        isValid = true;
	     }
	        return isValid;
	    }
}
