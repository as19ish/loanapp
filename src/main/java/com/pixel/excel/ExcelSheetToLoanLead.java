package com.pixel.excel;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Component;

import com.poiji.bind.Poiji;
import com.poiji.exception.PoijiExcelType;

@Component("sheetToLoanLead")
public class ExcelSheetToLoanLead implements ExcelSheetToLead {
	
	private static final String REASON_NULL_MOBILE = "Mobile number is empty";
	
	@Override
	public LeadsContainer getLeadList(InputStream inputStream) {
		List<LoanLeadExcelRow> rowList =  Poiji.fromExcel(inputStream, PoijiExcelType.XLS, LoanLeadExcelRow.class);
		return populateLoanLeadList(rowList);
	}
	
	LeadsContainer populateLoanLeadList(List<LoanLeadExcelRow> rowList){
		List<Lead> acceptedLeads = new ArrayList<Lead>();
		LeadsContainer container = new LeadsContainer();
		List<RejectedLeadRow> rejectedLeads = new ArrayList<RejectedLeadRow>();
		
		for(LoanLeadExcelRow row : rowList){
			if(row.getMobile() == null || row.getMobile().isEmpty()){
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), REASON_NULL_MOBILE));
				continue;
			}
			
			if(!isPhoneNumberValid(row.getMobile())){
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), "Mobile No Not Valid"));
				continue;
			}
			
			//boolean isDuplicate = true;
			
			/*if(isDuplicate){
				rejectedLeads.add(new RejectedLeadRow(String.valueOf(row.getRowIndex()), "Email or Mobile is duplicate"));
				continue;
			}*/
			
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

	     //Initialize reg ex for phone number.
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
