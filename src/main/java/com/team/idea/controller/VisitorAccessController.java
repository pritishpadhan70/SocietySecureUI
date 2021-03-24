package com.team.idea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.team.idea.entity.IdStringRequest;
import com.team.idea.entity.Response;
import com.team.idea.entity.VisitorDTO;
import com.team.idea.service.VisitorAccessService;

@Controller
@RequestMapping(value = "/visitoraccess")
public class VisitorAccessController {

	@Autowired
	VisitorAccessService visitorAccessService;
	
	@GetMapping("delivery/entry")
	public String deliveryEntry() {
		//return "addDeliveryBoyAtSecurity";
		return visitorAccessService.delivery("deliveryEntry");
	}
	
	@GetMapping("delivery/advanceRequest")
	public String deliveryAccess() {
		return visitorAccessService.delivery("deliveryAdvRequst");
	}
	
	
	
	@PostMapping("fetchVisitorData")
	public @ResponseBody Response fetchDaillyVisitor(@RequestBody IdStringRequest phone) {
		return visitorAccessService.fetchDailyVisitorAccess(phone);
	}
	
	@PostMapping("addVisitor")
	public ModelAndView addVisitor(@RequestBody VisitorDTO visitor) {
		ModelAndView mv= new ModelAndView();
		mv.addObject("response", visitorAccessService.addVisitorService(visitor));
		mv.setViewName("addDeliveryBoyAtSecurity");
		
		return mv;
	}
	
	@GetMapping("guest/entry")
	public String guestEntry() {
		return visitorAccessService.guest("guestEntry");
	}
	
	@GetMapping("guest/advanceRequest")
	public String guestAccess() {
		return visitorAccessService.guest("guestAdvRequest");
	}
	@GetMapping("helper/entry")
	public String helperEntry() {
		return visitorAccessService.helper("helperEntry");
	}
	@GetMapping("helper/advanceRequest")
	public String helperAccess() {
		return visitorAccessService.helper("helperAdvRequest");
	}
	@GetMapping("taxi/entry")
	public String taxiEntry() {
		return visitorAccessService.taxi("taxiEntry");
	}
	@GetMapping("taxi/advanceRequest")
	public String taxiAccess() {
		return visitorAccessService.taxi("taxiAdvRequest");
	}
	
	@GetMapping("shop/entry")
	public String shopEntry() {
		return visitorAccessService.taxi("shopEntry");
	}
	@GetMapping("shop/advanceRequest")
	public String shopAccess() {
		return visitorAccessService.taxi("shopAdvRequest");
	}
}
