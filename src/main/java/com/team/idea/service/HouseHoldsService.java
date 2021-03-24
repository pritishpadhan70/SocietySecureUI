package com.team.idea.service;

import com.team.idea.form.DailyGuest;

public interface HouseHoldsService {
	
	public String daliyGuest();
	public String dailyDelivery();
	public String dailyHelper();
	public String familyMember();
	public String vehicles();
	public String myNeighbour();
	public String addTenant();
	public String saveDailyGuest(DailyGuest dailyGuest);

}
