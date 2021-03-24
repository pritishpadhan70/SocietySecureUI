package com.team.idea.service;

import com.team.idea.entity.IdStringRequest;
import com.team.idea.entity.Response;
import com.team.idea.entity.VisitorDTO;

public interface VisitorAccessService {
	
	public String delivery(String uriPath) ;
	
	public String guest(String uriPath) ;
	
	public String helper(String uriPath) ;
	
	public String taxi(String uriPath) ;
	
	public String neighbourShopDetails(String uriPath) ;

	String addVisitorService(VisitorDTO visitor);

	public Response fetchDailyVisitorAccess(IdStringRequest phone);

}
