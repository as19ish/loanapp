package com.pixel.excel;


import java.io.IOException;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
public class UploadCompanyController {
	@Autowired
	ExcelService excelService;

	@Autowired
	@Qualifier("sheetToCompanyContainer")
	private ExcelSheetToCompany sheetToCompanyContainer;
	
	@PostMapping("upload-company")
	public String uploadCompany(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes){
		CompanyContainer companyContainer = null;
		try {
			String fileHash = excelService.getFileCheckSum( MessageDigest.getInstance("MD5"), file);
			if(excelService.sheetExist(fileHash)) {
				redirectAttributes.addFlashAttribute("companyAdded", "true");
				redirectAttributes.addFlashAttribute("sheetExist", "true");
				
				return "redirect:/upload-company";
			}
			companyContainer = sheetToCompanyContainer.getCompanyList(file.getInputStream());
			excelService.uploadCompany(companyContainer.getAcceptedCompany());
			redirectAttributes.addFlashAttribute("addedCompany", companyContainer.getAcceptedCompany().size());
			redirectAttributes.addFlashAttribute("companyAdded", "true");
			redirectAttributes.addFlashAttribute("rejectedCompanysize", companyContainer.getRejectedList().size());
			redirectAttributes.addFlashAttribute("rejectedCompany", companyContainer.getRejectedList());
			redirectAttributes.addFlashAttribute("sheetExist", "false");
			ExcelSheet sheet = new ExcelSheet();
			sheet.setFile_name(file.getOriginalFilename());
			sheet.setFile_hash(fileHash);
			sheet.setSheet_type("company");
			sheet.setTotal_added(companyContainer.getAcceptedCompany().size());
			excelService.addSheet(sheet);
			
			
		} catch (IOException | NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return "redirect:/upload-company";
	}
	
	@GetMapping("upload-company")
    public String uploadCompanyForm() {
        return "uploadCompany";
    }
	
	
}
