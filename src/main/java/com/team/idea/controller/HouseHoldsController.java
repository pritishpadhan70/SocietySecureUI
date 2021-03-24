package com.team.idea.controller;

import java.util.Map;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.team.idea.form.DailyGuest;
import com.team.idea.response.DailyGuestResponse;
import com.team.idea.service.HouseHoldsService;

@Controller
@RequestMapping(value = "/houseHolds")
public class HouseHoldsController {

	
	//@Autowired DailyGuestValidator dailyGuestValidator;
	 

	@Autowired
	HouseHoldsService houseHoldsService;

	  @Autowired
	  
	 @Qualifier("dailyGuestValidator") 
	 private Validator dailyGuestValidator;
	 
	 
	 
	 //Set a form validator
	 
	  @InitBinder(value = "dailyGuest")
	 protected void initBinder(WebDataBinder binder) { 
		 binder.setValidator(dailyGuestValidator); 
		}
	 
	 
	@GetMapping("dailyGuest")
	public String dailyGuest(Model model) {
		System.out.println("Inside dailyguest form populating");
		model.addAttribute("dailyGuest", new DailyGuest());
		return houseHoldsService.daliyGuest();

	}

	
	
	@PostMapping(path="dailyGuest/save")
	@ResponseBody
  	public DailyGuestResponse  dailyGuest(@Validated @ModelAttribute("dailyGuest") DailyGuest dailyGuest, BindingResult result,ModelMap   model) {
	
// 	public  DailyGuest  dailyGuest(@Validated @RequestBody DailyGuest dailyGuest, BindingResult result,ModelMap   model) {
		// model.addAttribute("dailyGuest", new DailyGuest());
		
		DailyGuestResponse  response = new DailyGuestResponse();
		System.out.println("dailyGuest:"+dailyGuest);
		 
		 if(result.hasErrors()) {
		  System.out.println("form has missing mandatrory data"); 
		 // return houseHoldsService.daliyGuest();
			/*
			 * model.addObject("error",true);
			 * model.addObject("message","Form has missing mandatory parameter");
			 * model.setViewName(houseHoldsService.daliyGuest());
			 */
		 /* Map<String, String> errors = result.getFieldErrors().stream()
	               .collect(
	                     Collectors.toMap(FieldError::getField, FieldError::getDefaultMessage)
	                 );*/
		    response.setValidated(false);
		//  response.setErrorMessages(errors);
		 }else {
			 response.setValidated(true); 
			// String outPut= houseHoldsService.saveDailyGuest(dailyGuest);
			 response.setDailyGuest(dailyGuest);
		 }
		 System.out.println("after  validator");
		
		 return response;

	}

	@GetMapping("daliyDelivery")
	public String daliyDelivery() {
		return houseHoldsService.dailyDelivery();
	}

	@GetMapping("dailyHelper")
	public String daliyHelper() {
		return houseHoldsService.dailyHelper();
	}

	@GetMapping("familyMember")
	public String familyMember() {
		return houseHoldsService.familyMember();
	}

	@GetMapping("vehicles")
	public String vehicle() {
		return houseHoldsService.vehicles();
	}

	@GetMapping("myNeighbour")
	public String myNeighbour() {
		return houseHoldsService.myNeighbour();
	}

	@GetMapping("tenant")
	public String addTenant() {
		return houseHoldsService.addTenant();
	}
}
