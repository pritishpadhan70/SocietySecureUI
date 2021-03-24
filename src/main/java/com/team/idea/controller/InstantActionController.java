package com.team.idea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.idea.service.InstantActionService;

@Controller
@RequestMapping(value="/instantAction")
public class InstantActionController {
	
	@Autowired
	InstantActionService instantActionService;

	
	@GetMapping("societyActivation")
	public  String  societyActivation() {
		return instantActionService.societyActivation();
		
	}
}
