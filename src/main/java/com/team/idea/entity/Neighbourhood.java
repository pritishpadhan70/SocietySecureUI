package com.team.idea.entity;

import java.io.Serializable;
import java.math.BigInteger;
import java.sql.Timestamp;

public class Neighbourhood implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Long nid;

	private Timestamp activationDate;

	private String address;

	private String contactNumber;

	private String gpsTagValue;

	private String gstin;

	private boolean isActive;

	private boolean isPasscodeEntryAuthorised;

	private String neighbourName;

	private String pan;

	private Timestamp regdDate;

	// @Column(name="SHOP_NUMBER")
	// private int shopNumber;

	private BigInteger userId;
	
	private NeibourhoodType neibourhoodType;

	public Long getNid() {
		return nid;
	}

	public void setNid(Long nid) {
		this.nid = nid;
	}

	public Timestamp getActivationDate() {
		return activationDate;
	}

	public void setActivationDate(Timestamp activationDate) {
		this.activationDate = activationDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getGpsTagValue() {
		return gpsTagValue;
	}

	public void setGpsTagValue(String gpsTagValue) {
		this.gpsTagValue = gpsTagValue;
	}

	public String getGstin() {
		return gstin;
	}

	public void setGstin(String gstin) {
		this.gstin = gstin;
	}

	public boolean isActive() {
		return isActive;
	}

	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}

	public boolean isPasscodeEntryAuthorised() {
		return isPasscodeEntryAuthorised;
	}

	public void setPasscodeEntryAuthorised(boolean isPasscodeEntryAuthorised) {
		this.isPasscodeEntryAuthorised = isPasscodeEntryAuthorised;
	}

	public String getNeighbourName() {
		return neighbourName;
	}

	public void setNeighbourName(String neighbourName) {
		this.neighbourName = neighbourName;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public Timestamp getRegdDate() {
		return regdDate;
	}

	public void setRegdDate(Timestamp regdDate) {
		this.regdDate = regdDate;
	}

	public BigInteger getUserId() {
		return userId;
	}

	public void setUserId(BigInteger userId) {
		this.userId = userId;
	}

	public NeibourhoodType getNeibourhoodType() {
		return neibourhoodType;
	}

	public void setNeibourhoodType(NeibourhoodType neibourhoodType) {
		this.neibourhoodType = neibourhoodType;
	}
	
	

}
