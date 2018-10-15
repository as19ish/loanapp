package com.pixel.controller;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.pixel.bean.pagination.DataTableRequest;
import com.pixel.bean.pagination.DataTableResults;
import com.pixel.bean.pagination.PaginationCriteria;

import com.pixel.bean.Employee;
import com.pixel.bean.Leads;
import com.pixel.bean.LeadsModel;
import com.pixel.service.AdminService;
import com.pixel.util.AppUtil;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@PersistenceContext
	private EntityManager entityManager;

	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String signup(ModelMap model, @ModelAttribute("employee") Employee employee) {

		if (adminService.countByEmail(employee.getEmail()) > 0) {
			model.addAttribute("error", "Email already exist!");
		} else {
			boolean isAdded = adminService.addEmployee(employee);
			if (isAdded) {
				model.addAttribute("message", "Employee added sucessfully");
			} else {
				model.addAttribute("error", "Some thing went wrong!");
			}
		}
		return "addemployee";
	}
	
	@RequestMapping(value = "/toggle_status/{id}",method=RequestMethod.GET)
	@ResponseBody
	public boolean toggleStatus(@PathVariable("id") int id){
		
		return adminService.toggleStatus(id);
	}
	
	@RequestMapping(value="/leads/fetch", method=RequestMethod.GET)
	@ResponseBody
	public String listLeadPaginated(HttpServletRequest request, HttpServletResponse response, Model model) {
		
		DataTableRequest<Leads> dataTableInRQ = new DataTableRequest<Leads>(request);
		PaginationCriteria pagination = dataTableInRQ.getPaginationRequest();
		
		String baseQuery = "SELECT * , (SELECT COUNT(1) FROM leads) as total_records FROM leads";
		String paginatedQuery = AppUtil.buildPaginatedQuery(baseQuery, pagination);
		
		System.out.println(paginatedQuery);
		
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
