package com.team.idea.service.impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.idea.rest.CallRestService;
import com.team.idea.service.EnrollmentService;

@Service
public class EnrollmentServiceImpl implements EnrollmentService {

	@Autowired	   
	CallRestService callRestService;
	
	@Override
	public String getEnrollmentDetails(String uriPath) {
		System.out.println("2. Inside EnrollmentServiceImpl");
		return callRestService.callService(uriPath);
	}

	
}
