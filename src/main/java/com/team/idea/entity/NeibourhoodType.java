package com.team.idea.entity;

import java.io.Serializable;

public class NeibourhoodType implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int ntId;

	private String description;

	private String type;

	public int getNtId() {
		return ntId;
	}

	public void setNtId(int ntId) {
		this.ntId = ntId;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
