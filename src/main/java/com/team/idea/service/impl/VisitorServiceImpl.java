package com.team.idea.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.team.idea.constant.SocietySecureConstant;
import com.team.idea.entity.IdStringRequest;
import com.team.idea.entity.Response;
import com.team.idea.entity.VisitorDTO;
import com.team.idea.rest.CallRestService;
import com.team.idea.service.VisitorService;

@Service
public class VisitorServiceImpl implements  VisitorService{
	
	
	@Autowired	   
	CallRestService callRestService;
	
	@Override
	public String addVisitorService(VisitorDTO visitor) {
		
		
	    ObjectMapper mapper = new ObjectMapper();

		Response  response = null;
		mapper = new ObjectMapper();
		String serviceOutput = callRestService.createVisitor(SocietySecureConstant.VISITOR_URI+"/"+SocietySecureConstant.CREATE_URI_SUFFIX, visitor);

		try {
			response = mapper.readValue(serviceOutput, Response.class);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if ( null != response && response.getCode() == 200 && response.isStatus() == true) {
			return SocietySecureConstant.MESSAGE_SUCCESS;
		}else {
			return SocietySecureConstant.MESSAGE_FAILURE;
		}
		//return "Visitor added Succesfully";
	}
	
	@Override
	public Response fetchDailyVisitorService(IdStringRequest phone ) {

	    ObjectMapper mapper = new ObjectMapper();

		Response  response = new Response();
		mapper = new ObjectMapper();
		String serviceOutput = callRestService.fetchDailyVisitor(SocietySecureConstant.VISITOR_URI+"/"+SocietySecureConstant.FETCH_URI_SUFFIX, phone);

		try {
			response = mapper.readValue(serviceOutput, Response.class);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
			response.setStatus(false);
			response.setCode(500);
			response.setMessage("error in parsing");
			response.setDetailedMessage(e.getMessage());
		}
		return response;
		
	}

	@Override
	public String deliveryDetails(String uriPath) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String guestDetails(String uriPath) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String helperDetails(String uriPath) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String taxiDetails(String uriPath) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String neighbourShopDetails(String uriPath) {
		// TODO Auto-generated method stub
		return null;
	}



}
