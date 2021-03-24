package com.team.idea.response;

import java.util.Map;

import com.team.idea.form.DailyGuest;

public class DailyGuestResponse {
	
	private DailyGuest dailyGuest;
	private boolean validated;
	private Map<String, String> errorMessages;
	
	
	public DailyGuest getDailyGuest() {
		return dailyGuest;
	}

	public void setDailyGuest(DailyGuest dailyGuest) {
		this.dailyGuest = dailyGuest;
	}
	
	public Map<String, String> getErrorMessages() {
		return errorMessages;
	}
	
	public void setErrorMessages(Map<String, String> errorMessages) {
		this.errorMessages = errorMessages;
	}
	
	
	public boolean isValidated() {
		return validated;
	}
	public void setValidated(boolean validated) {
		this.validated = validated;
	}

}
