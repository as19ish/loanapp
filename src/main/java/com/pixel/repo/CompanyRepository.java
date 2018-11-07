package com.pixel.repo;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pixel.bean.Company;


@Repository("CompanyRepository")
public interface CompanyRepository extends CrudRepository<Company, Integer> {

	@Query("SELECT name FROM Company where name like %:keyword%")
	public List<String> search(@Param("keyword") String keyword);

}
