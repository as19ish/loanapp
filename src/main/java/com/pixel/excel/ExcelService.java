package com.pixel.excel;


import java.security.MessageDigest;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public interface ExcelService {
	public int uploadLeads(List<Lead> list);
	public String getFileCheckSum(MessageDigest digest,MultipartFile file);
	public boolean sheetExist(String file_hash);
	public boolean addSheet(ExcelSheet sheet);

}
