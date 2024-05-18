package com.contact.dto;

public class ContactDTO {
	
	private int contactId;
	private String phoneNumber;
	private String name;
	private String email;
	private String profileImg;
	
	public String getProfileImg() {
		return profileImg;
	}
	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}
	public int getContactId() {
		return contactId;
	}
	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "ContactDTO [contactId=" + contactId + ", phoneNumber=" + phoneNumber + ", name=" + name + ", email="
				+ email + ", profileImg=" + profileImg + "]";
	}
	
	

}
