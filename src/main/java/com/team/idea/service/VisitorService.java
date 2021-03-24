package com.team.idea.service;

import com.team.idea.entity.IdStringRequest;
import com.team.idea.entity.Response;
import com.team.idea.entity.VisitorDTO;

public interface VisitorService {

	public String deliveryDetails(String uriPath) ;
	
	public String guestDetails(String uriPath) ;
	
	public String helperDetails(String uriPath) ;
	
	public String taxiDetails(String uriPath) ;
	
	public String neighbourShopDetails(String uriPath) ;

	String addVisitorService(VisitorDTO visitor);

	public Response fetchDailyVisitorService(IdStringRequest id);
	
}
