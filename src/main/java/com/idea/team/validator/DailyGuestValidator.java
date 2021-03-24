package com.idea.team.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.team.idea.form.DailyGuest;

@Component
public class DailyGuestValidator implements Validator  {

	public DailyGuestValidator() {}
	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return DailyGuest.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		DailyGuest dailyGuest = (DailyGuest) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobileNo", "NotEmpty.dailyGuest.mobileNo");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty.dailyGuest.firstName");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "dateOfBirth", "NotEmpty.dailyGuest.dateOfBirth");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty.dailyGuest.lastName");
	
	}
	
	
	
	

}
