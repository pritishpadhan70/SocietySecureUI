package com.team.idea.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.idea.constant.PageFactory;
import com.team.idea.constant.SocietySecureConstant;
import com.team.idea.entity.VisitorDTO;
import com.team.idea.form.DailyGuest;
import com.team.idea.rest.CallRestService;
import com.team.idea.service.HouseHoldsService;

@Service
public class HouseHoldsServiceImpl implements HouseHoldsService{
	
	@Autowired	   
	CallRestService callRestService;
    
	@Override
	public String daliyGuest() {

		return PageFactory.HOUSEHOLDS_DAILY_GUEST_PAGE;
	}

	@Override
	public String dailyDelivery() {
	
		
		return PageFactory.HOUSEHOLDS_DAILY_DELIVERY_PAGE;
	}

	@Override
	public String dailyHelper() {
	
		return PageFactory.HOUSEHOLDS_DAILY_HELPER_PAGE;
	}

	@Override
	public String familyMember() {
		
		return PageFactory.HOUSEHOLDS_FAMILY_MEMBER_PAGE;
	}

	@Override
	public String vehicles() {
		
		return PageFactory.HOUSEHOLDS_VEHICLES_PAGE;
	}

	@Override
	public String myNeighbour() {
		
		return PageFactory.HOUSEHOLDS_MY_NEIGHBOUR_PAGE;
	}
	
	public String addTenant() {
		return PageFactory.HOUSEHOLDS_ADD_TENANT;
	}
	


	@Override
	public String saveDailyGuest(DailyGuest dailyGuest) {
		
		// TODO Auto-generated method stub
		VisitorDTO visitorDTO = new VisitorDTO();
		visitorDTO.setFirstName(dailyGuest.getFirstName());
		visitorDTO.setLastName(dailyGuest.getLastName());
		visitorDTO.setIdType(Integer.parseInt(dailyGuest.getIdNo()));
		visitorDTO.setType(Integer.parseInt(dailyGuest.getType())); //form data need to modify
		visitorDTO.setPhone(dailyGuest.getMobileNo());
		visitorDTO.setAlternativePhone(dailyGuest.getAlternateContactNo());
		visitorDTO.setDateOfBirth(dailyGuest.getDateOfBirth());
		visitorDTO.setSex(dailyGuest.getGender()); // need to valdate the name to use
		visitorDTO.setIdentityType(dailyGuest.getIdType());  // need to validate the name to use
		visitorDTO.setIdValue(dailyGuest.getIdNo());
		visitorDTO.setGuestRelation(dailyGuest.getRelation());
		visitorDTO.setVisitingFequency(dailyGuest.getVisitingFrequency());
		String serviceOutput = callRestService.createVisitor(SocietySecureConstant.VISITOR_URI+"/"+SocietySecureConstant.CREATE_URI_SUFFIX, visitorDTO);
		System.out.println("household service saveDailyGuest output:"+serviceOutput);
		
		return serviceOutput;
	}

}
