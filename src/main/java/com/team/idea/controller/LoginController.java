package com.team.idea.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class LoginController {
	

	
	@GetMapping("/home")
	public String home() {
		System.out.println("Inside home controller");
		return "home";
	}
	
	@PostMapping("/login")
	public String login() {
		return "menu";
	}
	
	
	
	
/*	findOneSocietyEnrollmentController
	SocietyEnrollmentController
	SocietyEnrollmentController*/

}
