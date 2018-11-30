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
import com.pixel.bean.CompanyPagination;
import com.pixel.bean.pagination.DataTableRequest;
import com.pixel.bean.pagination.DataTableResults;
import com.pixel.bean.pagination.PaginationCriteria;
import com.pixel.excel.Company;
import com.pixel.service.CompanyService;
import com.pixel.util.AppUtil;

@Controller
public class CompanyController {
	
	@Autowired
	private CompanyService companyService;
	
	@PersistenceContext
	private EntityManager entityManager;
	
	@RequestMapping(value = "/company/add", method = RequestMethod.GET)
	public String addemployee(ModelMap model) {
		return "addcompany";
	}
	@RequestMapping(value = "/company/add", method = RequestMethod.POST)
	public String signup(ModelMap model, @ModelAttribute("company") Company company) {

		if (company.getName().isEmpty()) {
			model.addAttribute("error", "Company name is empty");
		} else {
		boolean isAdded = companyService.add(company);
		if (isAdded) {
			model.addAttribute("message", "Company added sucessfully");
		} else {
			model.addAttribute("error", "Some thing went wrong!");
		}
		}
		return "addcompany";
	}
	
	@RequestMapping(value="/company/search",method=RequestMethod.GET)
	@ResponseBody
	public List<String> search(HttpServletRequest request) {
		return companyService.search(request.getParameter("term"));
	}
	
	@RequestMapping(value="/companies", method=RequestMethod.GET)
    public String companyList() {
        return "companylist";
    }
	
	@RequestMapping(value = "/company/delete/{id}",method=RequestMethod.GET)
	@ResponseBody
	public boolean deleteCompany(@PathVariable("id") Long id){
		return companyService.delete(id);
	}
	
	
	@RequestMapping(value="/companies/pagination", method=RequestMethod.GET)
	@ResponseBody
	public String companyListPaginated(HttpServletRequest request, HttpServletResponse response, Model model) {
		String baseQuery;
		DataTableRequest<Company> dataTableInRQ = new DataTableRequest<Company>(request);
		PaginationCriteria pagination = dataTableInRQ.getPaginationRequest();
		baseQuery = "SELECT id,name,creation_date,(SELECT COUNT(1) FROM company) AS total_records FROM company";
		String paginatedQuery = AppUtil.buildPaginatedQuery(baseQuery, pagination);
		Query query = entityManager.createNativeQuery(paginatedQuery, CompanyPagination.class);
		@SuppressWarnings("unchecked")
		List<CompanyPagination> userList = query.getResultList();
		DataTableResults<CompanyPagination> dataTableResult = new DataTableResults<CompanyPagination>();
		dataTableResult.setDraw(dataTableInRQ.getDraw());
		dataTableResult.setListOfDataObjects(userList);
		if (!AppUtil.isObjectEmpty(userList)) {
		dataTableResult.setRecordsTotal(userList.get(0).getTotalRecords().toString());
		if (dataTableInRQ.getPaginationRequest().isFilterByEmpty()) {
			dataTableResult.setRecordsFiltered(userList.get(0).getTotalRecords().toString());
		} else {
			dataTableResult.setRecordsFiltered(Integer.toString(userList.size()));
		}
		}
		return new Gson().toJson(dataTableResult);
	}
}
