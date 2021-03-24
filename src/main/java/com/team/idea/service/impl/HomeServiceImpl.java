package com.team.idea.service.impl;

import org.springframework.stereotype.Service;

import com.team.idea.constant.PageFactory;
import com.team.idea.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService{
	
	@Override
	public String home() {
	
		return PageFactory.HOME;
	}

}
