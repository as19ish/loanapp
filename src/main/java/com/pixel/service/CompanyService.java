package com.pixel.service;

import java.util.List;

import com.pixel.excel.Company;

public interface CompanyService {
	public List<String> search(String keyword);
	public boolean add(Company company);
	public boolean delete(Long id);
}
