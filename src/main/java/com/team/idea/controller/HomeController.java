package com.team.idea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.idea.service.HomeService;

@Controller
@RequestMapping(value = "/homeInitial")
public class HomeController {
	
	@Autowired 
	HomeService homeService;
	
	public String home() {
		return homeService.home();
	}
	
}
