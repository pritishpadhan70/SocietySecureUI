package com.team.idea.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.team.idea.constant.PageFactory;
import com.team.idea.constant.SocietySecureConstant;
import com.team.idea.entity.Response;
import com.team.idea.rest.CallRestService;
import com.team.idea.service.ApprovalService;

@Service
public class ApprovalServiceImpl implements ApprovalService{
	
	
	@Autowired	   
	CallRestService callRestService;

	@Override
	public String flat() {
		// TODO Auto-generated method stub
		return PageFactory.APPROVAL_FLAT_PAGE;
	}

	@Override
	public String neighbourhoodDetails() {
		
		return PageFactory.APPROVAL_NEIGHBOURHOOD_PAGE;
	}

	@Override
	public String neighbourhoodRecords(String uriPath) {
		// TODO Auto-generated method stub
		return callRestService.callService(uriPath);
	
	}

	@Override
	public String updateStatus(String id,String btnClick, String message) {
		// TODO Auto-generated method stub
		/*
		 * System.out.println("inside update start:"+uri); if("pass".equals(uri)) {
		 * return "SUCCESS"; }else { return "FAIL"; }
		 */
		
		   // create `ObjectMapper` instance
	    ObjectMapper mapper = new ObjectMapper();

	    // create a JSON object
	    ObjectNode enrollStatusData = mapper.createObjectNode();
	    enrollStatusData.put("id", id);
	    enrollStatusData.put("statusId", btnClick);
	    enrollStatusData.put("status", btnClick);
	    enrollStatusData.put("comments", message);
	    
	    Response  response = null;
		mapper = new ObjectMapper();
		String serviceOutput = callRestService.updateService(SocietySecureConstant.NEIGHBOURHOOD_URI+"/"+SocietySecureConstant.STATUS_UPDATE, enrollStatusData);
		
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

	}
	
}
