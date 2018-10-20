package com.pixel.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;

import com.google.gson.Gson;
import com.pixel.bean.pagination.PaginationCriteria;


public class AppUtil {
	
	public static boolean hasRole(String role) {
        // get security context from thread local
        SecurityContext context = SecurityContextHolder.getContext();
        if (context == null)
            return false;

        Authentication authentication = context.getAuthentication();
        if (authentication == null)
            return false;

        for (GrantedAuthority auth : authentication.getAuthorities()) {
            if (role.equals(auth.getAuthority()))
                return true;
        }

        return false;
    }
	private static boolean isCollectionEmpty(Collection<?> collection) {
		if (collection == null || collection.isEmpty()) {
			return true;
		}
		return false;
	}
	

	public static boolean isObjectEmpty(Object object) {
		if(object == null) return true;
		else if(object instanceof String) {
			if (((String)object).trim().length() == 0) {
				return true;
			}
		} else if(object instanceof Collection) {
			return isCollectionEmpty((Collection<?>)object);
		}
		return false;
	}
	

	public static String getBeanToJsonString(Object beanClass) {
		return new Gson().toJson(beanClass);
	}
	

	public static String getBeanToJsonString(Object... beanClasses) {
		StringBuilder stringBuilder = new StringBuilder();
		for (Object beanClass : beanClasses) {
			stringBuilder.append(getBeanToJsonString(beanClass));
			stringBuilder.append(", ");
		}
		return stringBuilder.toString();
	}


	public String concatenate(List<String> listOfItems, String separator) {
		StringBuilder sb = new StringBuilder();
		Iterator<String> stit = listOfItems.iterator();
		
		while (stit.hasNext()) {
			sb.append(stit.next());
			if(stit.hasNext()) {
				sb.append(separator);
			}
		}
		
		return sb.toString();		
	}

	public static String buildPaginatedQuery(String baseQuery, PaginationCriteria paginationCriteria) {
		//String queryTemplate = "SELECT FILTERED_ORDERD_RESULTS.* FROM (SELECT BASEINFO.* FROM ( %s ) BASEINFO %s  %s ) FILTERED_ORDERD_RESULTS LIMIT %d, %d";
		StringBuilder sb = new StringBuilder("SELECT FILTERED_ORDERD_RESULTS.* FROM (SELECT BASEINFO.* FROM ( #BASE_QUERY# ) BASEINFO #WHERE_CLAUSE#  #ORDER_CLASUE# ) FILTERED_ORDERD_RESULTS LIMIT #PAGE_NUMBER#, #PAGE_SIZE#");
		String finalQuery = null;
		if(!AppUtil.isObjectEmpty(paginationCriteria)) {
			finalQuery = sb.toString().replaceAll("#BASE_QUERY#", baseQuery)
							.replaceAll("#WHERE_CLAUSE#", ((AppUtil.isObjectEmpty(paginationCriteria.getFilterByClause())) ? "" : " WHERE ") + paginationCriteria.getFilterByClause())
								.replaceAll("#ORDER_CLASUE#", paginationCriteria.getOrderByClause())
									.replaceAll("#PAGE_NUMBER#", paginationCriteria.getPageNumber().toString())
										.replaceAll("#PAGE_SIZE#", paginationCriteria.getPageSize().toString());
		}
		return (null == finalQuery) ?  baseQuery : finalQuery;
	}
	
	public static String buildPaginatedQueryForOracle(String baseQuery, PaginationCriteria paginationCriteria) {
		
		StringBuilder sb = new StringBuilder("SELECT * FROM (SELECT FILTERED_ORDERED_RESULTS.*, COUNT(1) OVER() total_records, ROWNUM AS RN FROM (SELECT BASEINFO.* FROM ( #BASE_QUERY# ) BASEINFO ) FILTERED_ORDERED_RESULTS #WHERE_CLAUSE# #ORDER_CLASUE# ) WHERE RN > (#PAGE_NUMBER# * #PAGE_SIZE#) AND RN <= (#PAGE_NUMBER# + 1) * #PAGE_SIZE# ");
		String finalQuery = null;
		

		
		int pageNo = paginationCriteria.getPageNumber() / paginationCriteria.getPageSize();
		paginationCriteria.setPageNumber(pageNo);
		
		if(!AppUtil.isObjectEmpty(paginationCriteria)) {
			finalQuery = sb.toString().replaceAll("#BASE_QUERY#", baseQuery)
							.replaceAll("#WHERE_CLAUSE#", ((AppUtil.isObjectEmpty(paginationCriteria.getFilterByClause())) ? "" : " WHERE ") + paginationCriteria.getFilterByClause())
								.replaceAll("#ORDER_CLASUE#", paginationCriteria.getOrderByClause())
									.replaceAll("#PAGE_NUMBER#", paginationCriteria.getPageNumber().toString())
										.replaceAll("#PAGE_SIZE#", paginationCriteria.getPageSize().toString());
		}
		return (null == finalQuery) ?  baseQuery : finalQuery;
	}
}
