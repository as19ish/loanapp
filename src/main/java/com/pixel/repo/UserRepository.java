package com.pixel.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;


import com.pixel.bean.Leads;

/**
 * @author pavan.solapure
 *
 */
public interface UserRepository extends JpaRepository<Leads, Long> {
	
	@Query(value = "SELECT * FROM leads", nativeQuery = true)
	List<Leads> findAllByUsernames(List<String> listOfUsernames);
}
