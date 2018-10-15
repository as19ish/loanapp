package com.pixel.repo;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;


import com.pixel.bean.LeadsModel;


@Repository
public class GenericRepoImpl implements GenericRepo {
	
	@PersistenceContext
	private EntityManager entityManager;

	
	@Override
	public List<LeadsModel> getUserModel() {

		String qry = "SELECT lead_id as lead_id, name as name, mobile as mobile, creationDate as creationDate,lastUpdatedDate as lastUpdatedDate,status as status,employee_id as employee_id, 1 as total_records FROM leads";
		Query query = entityManager.createNativeQuery(qry,
				LeadsModel.class);

		@SuppressWarnings("unchecked")
		List<LeadsModel> daoDtolist = query.getResultList();
		
		return daoDtolist;
	}

}
