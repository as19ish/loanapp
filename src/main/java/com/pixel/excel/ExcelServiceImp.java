package com.pixel.excel;


import java.io.IOException;
import java.io.InputStream;
import java.security.MessageDigest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Component
public class ExcelServiceImp implements ExcelService{
	@Autowired
	ExcelDao excelDao;
	@Override
	public int uploadLeads(List<Lead> leads) {
		return excelDao.uploadLeads(leads);
	}
	@Override
	public String getFileCheckSum(MessageDigest digest, MultipartFile file) {
		try {
				InputStream is = file.getInputStream();
				byte[] byteArray = new byte[1024];
			    int bytesCount = 0;
				    while ((bytesCount = is.read(byteArray)) != -1) {
				        digest.update(byteArray, 0, bytesCount);
				    };
		  
			    is.close();		    
			    byte[] bytes = digest.digest();
			    StringBuilder sb = new StringBuilder();
				    for(int i=0; i< bytes.length ;i++){
				        sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
				    }
			     		    
			   return sb.toString();
		} catch (IOException e) {
			
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public boolean sheetExist(String file_hash) {
		
		return excelDao.sheetExist(file_hash);
	}
	@Override
	public boolean addSheet(ExcelSheet sheet) {
		return excelDao.addSheet(sheet);
	}
	
}
