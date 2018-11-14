package com.pixel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pixel.bean.AuthEmployee;
import com.pixel.bean.LeadsModel;
import com.pixel.bean.Remark;
import com.pixel.bean.pagination.DataTableRequest;
import com.pixel.bean.pagination.DataTableResults;
import com.pixel.bean.pagination.PaginationCriteria;
import com.pixel.excel.Lead;
import com.pixel.service.LeadService;
import com.pixel.service.MoreDeatailService;
import com.pixel.service.StatusService;
import com.pixel.util.AppUtil;



@Controller
public class LeadsController {
	
	@Autowired
	private LeadService leadService;
	
	@Autowired
	private StatusService statusService;
	
	@Autowired
	private MoreDeatailService moreDetailService;
	
	@Autowired
    private ServletContext servletContext;
	

	@PersistenceContext
	private EntityManager entityManager;

	
	@RequestMapping(value = "/add-leads", method = RequestMethod.POST)
	public String addLead(ModelMap model, @ModelAttribute("lead") Lead lead) {

		
			boolean isAdded = leadService.addLead(lead);
			if (isAdded) {
				model.addAttribute("message", "Lead added sucessfully");
			} else {
				model.addAttribute("error", "Some thing went wrong or Mobile No already exists!");
			}
		
		return "addlead";
	}
	@RequestMapping(value = "/fetch-lead", method = RequestMethod.GET)
	public String fetchLead(ModelMap model) {
		AuthEmployee current_employee = (AuthEmployee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		model.addAttribute("lead",leadService.fetchLead(current_employee.getEmployee_id()));
		model.addAttribute("status",statusService.getAllStatus());
		return "fetchlead";
	}
	
	@RequestMapping(value = "/leads/status",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> changeLeadStatus(@RequestBody Remark remark){
		HashMap<String, String> map = new HashMap<>();
		if(leadService.changeStatus(remark)) {
			map.put("status", "success");     
	        return map;
		}else {
			map.put("status", "error");     
	        return map;
		}
		
	}
	@RequestMapping(value = "/leads/delete/{id}",method=RequestMethod.GET)
	@ResponseBody
	public boolean deleteLead(@PathVariable("id") Long id){
		
		return leadService.delete(id);
	}
	
	@RequestMapping(value="leads/show/{id}",method=RequestMethod.GET)
	public String show(@PathVariable("id") Long id,ModelMap model) {
		Lead lead = leadService.getLead(id);
		if(!AppUtil.hasRole("admin") && lead.getEmployee_id() != AppUtil.getEmployeeId()) {
			return "404";
		}
		model.addAttribute("lead",lead );
		model.addAttribute("eloan", moreDetailService.getEloan(id));
		model.addAttribute("ecard", moreDetailService.getEcard(id));
		if(lead.getOccupation_id() == 1) {
			model.addAttribute("job", moreDetailService.getJobDetails(id));
		}else {
			model.addAttribute("business", moreDetailService.getBussinessDetails(id));
		}
		return "lead";
		
	}
	@RequestMapping(value = "/add-leads", method = RequestMethod.GET)
	public String addLeads(ModelMap model) {
		return "addlead";
	}
	
	@RequestMapping(value = "/leads", method = RequestMethod.GET)
	public String getLead() {
		return "index";
	}
	
	@RequestMapping(value="/leads/fetch", method=RequestMethod.GET)
	@ResponseBody
	public String listLeadPaginated(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		DataTableRequest<Lead> dataTableInRQ = new DataTableRequest<Lead>(request);
		PaginationCriteria pagination = dataTableInRQ.getPaginationRequest();
		
		String baseQuery = "SELECT leads.lead_id,leads.name,leads.mobile,leads.last_updated_date,leads.creation_date,leads.employee_id,status.name as status ,leads.next_call , (SELECT COUNT(1) FROM leads) as total_records FROM leads INNER JOIN status ON  leads.status_id = status.id ";
		String paginatedQuery = AppUtil.buildPaginatedQuery(baseQuery, pagination);
			
		Query query = entityManager.createNativeQuery(paginatedQuery, LeadsModel.class);
		
		@SuppressWarnings("unchecked")
		List<LeadsModel> userList = query.getResultList();
		
		DataTableResults<LeadsModel> dataTableResult = new DataTableResults<LeadsModel>();
		dataTableResult.setDraw(dataTableInRQ.getDraw());
		dataTableResult.setListOfDataObjects(userList);
		if (!AppUtil.isObjectEmpty(userList)) {
			dataTableResult.setRecordsTotal(userList.get(0).getTotalRecords()
					.toString());
			if (dataTableInRQ.getPaginationRequest().isFilterByEmpty()) {
				dataTableResult.setRecordsFiltered(userList.get(0).getTotalRecords()
						.toString());
			} else {
				dataTableResult.setRecordsFiltered(Integer.toString(userList.size()));
			}
		}
		return new Gson().toJson(dataTableResult);
	}
	
}
