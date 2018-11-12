package com.pixel.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pixel.bean.InterestedLead;
import com.pixel.bean.leadsModelWithEmployee;
import com.pixel.bean.pagination.DataTableRequest;
import com.pixel.bean.pagination.DataTableResults;
import com.pixel.bean.pagination.PaginationCriteria;
import com.pixel.excel.Lead;
import com.pixel.service.LeadService;
import com.pixel.util.AppUtil;

@Controller
public class InterestedLeadController {
	
	@Autowired
	private LeadService leadService;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/ileads", method = RequestMethod.GET)
	public String getOtherLead() {
		return "ileads";
	}
	
	@RequestMapping(value = "/leads/interested", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> addToIntersted(@RequestBody InterestedLead lead) {
        leadService.addToInterested(lead);
        HashMap<String, String> map = new HashMap<>();
        map.put("status", "success");     
        return map;
    }

	@RequestMapping(value="/leads/fetch/interested", method=RequestMethod.GET)
	@ResponseBody
	public String listLeadPaginated(HttpServletRequest request, HttpServletResponse response, Model model) {
		String baseQuery;
		DataTableRequest<Lead> dataTableInRQ = new DataTableRequest<Lead>(request);
		PaginationCriteria pagination = dataTableInRQ.getPaginationRequest();
		
		if(AppUtil.hasRole("admin")) {
			 baseQuery = "SELECT leads.lead_id,leads.name,leads.mobile,leads.last_updated_date,leads.creation_date,employee.name as employee_name,status.name as status ,leads.next_call , (SELECT COUNT(1) FROM leads where status_id = (select id from status where name = 'interested')) as total_records FROM leads INNER JOIN status ON leads.status_id = status.id INNER JOIN employee on leads.employee_id = employee.employee_id where status.name = 'interested'";
		}else {
			 baseQuery = "SELECT leads.lead_id,leads.name,leads.mobile,leads.last_updated_date,leads.creation_date,employee.name as employee_name,status.name as status ,leads.next_call , (SELECT COUNT(1) FROM leads where status_id = (select id from status where name = 'interested' and employee_id ="+AppUtil.getEmployeeId()+")) as total_records FROM leads INNER JOIN status ON leads.status_id = status.id INNER JOIN employee on leads.employee_id = employee.employee_id where status.name = 'interested' and leads.employee_id = "+AppUtil.getEmployeeId();
			}
		
		String paginatedQuery = AppUtil.buildPaginatedQuery(baseQuery, pagination);
			System.out.println(paginatedQuery);
		Query query = entityManager.createNativeQuery(paginatedQuery, leadsModelWithEmployee.class);
		
		@SuppressWarnings("unchecked")
		List<leadsModelWithEmployee> userList = query.getResultList();
		
		DataTableResults<leadsModelWithEmployee> dataTableResult = new DataTableResults<leadsModelWithEmployee>();
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
