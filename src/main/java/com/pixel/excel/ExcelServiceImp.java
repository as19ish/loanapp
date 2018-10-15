package com.pixel.excel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
@Component
public class ExcelServiceImp implements ExcelService{
	@Autowired
	ExcelDao excelDao;
	@Override
	public int uploadLeads(List<Lead> leads) {
		return excelDao.uploadLeads(leads);
	}

}
