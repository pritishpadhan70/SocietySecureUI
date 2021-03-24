package com.team.idea.service;

public interface ApprovalService {
	
	public String flat();
	
	public String neighbourhoodRecords(String uriPath);
	
	public String neighbourhoodDetails();
	
	public String updateStatus(String id, String btnClick, String message);

}
