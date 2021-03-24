package com.team.idea.service.impl;

import org.springframework.stereotype.Service;

import com.team.idea.constant.PageFactory;
import com.team.idea.service.ActivityService;


@Service
public class ActivityServiceImpl implements ActivityService {


	@Override
	public String notifications() {
		// TODO Auto-generated method stub
		
		return PageFactory.ACTIVITY_NOTIFICATIONS;
	}

}
