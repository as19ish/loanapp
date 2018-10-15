package com.pixel.excel;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
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
			lContainer = sheetToLoanLead.getLeadList(file.getInputStream());
			Integer size=excelService.uploadLeads(lContainer.getAcceptedLeads());
			redirectAttributes.addFlashAttribute("addedLeads", lContainer.getAcceptedLeads().size());
			redirectAttributes.addFlashAttribute("leadsAdded", "true");
			redirectAttributes.addFlashAttribute("rejectedLeads", lContainer.getRejectedLeads());
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/upload-leads";
	}
	
	@GetMapping("upload-leads")
    public String uploadLeadsForm() {
        return "uploadlead";
    }
}
