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
public class UploadFileController {
	@Autowired
	ExcelService excelService;

	@Autowired
	@Qualifier("sheetToLoanLead")
	private ExcelSheetToLead sheetToLoanLead;
	
	@PostMapping("upload-leads")
	public String uploadLeads(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes){
		LeadsContainer lContainer = null;
		try {
			String fileHash = excelService.getFileCheckSum( MessageDigest.getInstance("MD5"), file);
			if(excelService.sheetExist(fileHash)) {
				redirectAttributes.addFlashAttribute("leadsAdded", "true");
				redirectAttributes.addFlashAttribute("sheetExist", "true");
				
				return "redirect:/upload-leads";
			}
			lContainer = sheetToLoanLead.getLeadList(file.getInputStream());
			excelService.uploadLeads(lContainer.getAcceptedLeads());
			redirectAttributes.addFlashAttribute("addedLeads", lContainer.getAcceptedLeads().size());
			redirectAttributes.addFlashAttribute("leadsAdded", "true");
			redirectAttributes.addFlashAttribute("rejectedLeadsize", lContainer.getRejectedLeads().size());
			redirectAttributes.addFlashAttribute("rejectedLead", lContainer.getRejectedLeads());
			redirectAttributes.addFlashAttribute("sheetExist", "false");
			ExcelSheet sheet = new ExcelSheet();
			sheet.setFile_name(file.getOriginalFilename());
			sheet.setFile_hash(fileHash);
			sheet.setSheet_type("lead");
			sheet.setTotal_added(lContainer.getAcceptedLeads().size());
			excelService.addSheet(sheet);
			
			
		} catch (IOException | NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return "redirect:/upload-leads";
	}
	
	@GetMapping("upload-leads")
    public String uploadLeadsForm() {
        return "uploadlead";
    }
	
	
}
