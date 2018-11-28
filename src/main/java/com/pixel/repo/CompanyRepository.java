package com.pixel.repo;

import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.pixel.bean.Company;


@Repository("CompanyRepository")
public interface CompanyRepository extends CrudRepository<Company, Integer> {

	@Query(value="SELECT name FROM company where name like LOWER(CONCAT('%',:keyword, '%')) LIMIT 10", nativeQuery = true)
	public List<String> search(@Param("keyword") String keyword);

}