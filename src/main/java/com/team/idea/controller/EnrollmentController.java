package com.team.idea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.idea.service.EnrollmentService;

@Controller
public class EnrollmentController {
	
	@Autowired
	EnrollmentService enrollmentService;
	
	@Value("${REST_URL}")
	private  String url;
	
	
	@GetMapping("enrollment")
	public String enrollmentDetails() {

		return "societyEnrollmentDetails";
		
	}
	
	@GetMapping("enrollmentDetails")
	public @ResponseBody String enrollmentAlldata() {
		String outPut = enrollmentService.getEnrollmentDetails("societyenrollment");
		System.out.println("data output:"+outPut.toString());
		return outPut;
		/*
		 * Gson gson = new Gson(); return gson.toJson(outPut);
		 */
		
	}
	
	 @GetMapping(value = "fetchEnrollment/{enrollId}", produces = {MediaType.APPLICATION_JSON_VALUE})
	public String fetchEnrollId(@PathVariable String enrollId) {
		/*
		 * String outPut = enrollmentService.getEnrollmentDetails("getallenroll");
		 * System.out.println("data output:"+outPut.toString());
		 */
		return "societyApprovalRequestToSocietyAdmin";
		
	}
	

}
