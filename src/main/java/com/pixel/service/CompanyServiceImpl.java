package com.pixel.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pixel.dao.CompanyDao;
import com.pixel.excel.Company;
import com.pixel.repo.CompanyRepository;

@Transactional
@Service("companyService")
public class CompanyServiceImpl implements CompanyService {
	
	@Autowired
	private CompanyRepository companyRepository;
	
	@Autowired
	private CompanyDao companyDao;
	
	

	@Override
	public List<String> search(String keyword) {
		return companyRepository.search(keyword);
	}

	@Override
	public boolean add(Company company) {
		return companyDao.add(company);
	}

	@Override
	public boolean delete(Long id) {
		return companyDao.delete(id);
	}

}
