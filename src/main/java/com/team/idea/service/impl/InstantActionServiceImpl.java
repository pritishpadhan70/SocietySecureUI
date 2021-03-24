package com.team.idea.service.impl;

import org.springframework.stereotype.Service;

import com.team.idea.constant.PageFactory;
import com.team.idea.service.InstantActionService;

@Service
public class InstantActionServiceImpl implements InstantActionService {
	


	@Override
	public String societyActivation() {
		
		return PageFactory.INSTANT_ACTION_SOCIETY_ACTIVATION_PAGE;
	}

}
