package com.team.idea.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.idea.constant.PageFactory;
import com.team.idea.constant.SocietySecureConstant;
import com.team.idea.entity.IdStringRequest;
import com.team.idea.entity.Response;
import com.team.idea.entity.VisitorDTO;
import com.team.idea.service.VisitorAccessService;
import com.team.idea.service.VisitorService;

@Service
public class VisitorAccessServiceImpl implements VisitorAccessService {
	
	@Autowired
	VisitorService service;
	
	@Override
	public String delivery(String pageValue) {
		// TODO Auto-generated method stub
		
		String value="";
		
		if (SocietySecureConstant.DELIVERY_ENTRY.equals(pageValue)) {
			
			value = PageFactory.DELIVERY_ENTRY;
			
		}else {
			
			value = PageFactory.DELIVERY_ADV_REQUEST;
		}
		return value;
	}

	@Override
	public String guest(String pageValue) {
		// TODO Auto-generated method stub
		String value="";
		
		if(SocietySecureConstant.GUEST_ENTRY.equals(pageValue)) {
			value = PageFactory.GUEST_ENTRY_PAGE;
			
		}else {
			value = PageFactory.GUEST_ADV_REQUEST_PAGE;
		}
		
		return value;
	}

	@Override
	public String helper(String pageValue) {
		// TODO Auto-generated method stub
		String value ="";
		
		if(SocietySecureConstant.HELPER_ENTRY.equals(pageValue)){
			
			value = PageFactory.HELPER_ENTRY_PAGE;
			
		}else {
			
			value = PageFactory.HELPER_ADV_REQUEST_PAGE;
			
		}
		return value;
	}

	@Override
	public String taxi(String pageValue) {
		// TODO Auto-generated method stub
		String value ="";
		
		if(SocietySecureConstant.TAXI_ENTRY.equals(pageValue)) {
			
			value = PageFactory.TAXI_ENTRY_PAGE;
			
		}else {
			
			value = PageFactory.TAXI_ADV_REQUEST_PAGE;
		}
		return value;
	}

	@Override
	public String neighbourShopDetails(String pageValue) {
		// TODO Auto-generated method stub
		String value="";
		
		if(SocietySecureConstant.NEIGHBOUR_HOOD_SHOP_ENTRY.equals(pageValue)) {
			
			value = PageFactory.NEIGHBOURHOOD_SHOP_ENTRY_PAGE;
			
		}else {
			
			value = PageFactory.NEIGHBOURHOOD_SHOP_TAXI_ADV_REQUEST_PAGE;
		}
		
		return value;
	}
	@Override
	public String addVisitorService(VisitorDTO visitor) {
		
			
		if(null == visitor|| visitor.getFirstName() == null || //visitor.getFirstName().isBlank()||
				visitor.getFlatid() == null ) {//|| visitor.getFlatid().isBlank()) {
							//throw new InvalidInputDataException("Invalid Visitor object");
			return "invalid Object";
		}
		service.addVisitorService(visitor);
		String value="test";
		/*
		 * if(SocietySecureConstant.NEIGHBOUR_HOOD_SHOP_ENTRY.equals(pageValue)) {
		 * 
		 * value = PageFactory.NEIGHBOURHOOD_SHOP_ENTRY_PAGE;
		 * 
		 * }else {
		 * 
		 * value = PageFactory.NEIGHBOURHOOD_SHOP_TAXI_ADV_REQUEST_PAGE; }
		 */
		
		return value;
	}

	@Override
	public Response fetchDailyVisitorAccess(IdStringRequest phone) {
		
		return service.fetchDailyVisitorService(phone);
	}
}
