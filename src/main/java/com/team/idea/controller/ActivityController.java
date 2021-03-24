package com.team.idea.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team.idea.service.ActivityService;

@Controller
@RequestMapping(value = "/activity")
public class ActivityController {
	
	@Autowired
	ActivityService activityService;
	
	@GetMapping("notifications")
	public String notifications() {
		return activityService.notifications();
	}

}
