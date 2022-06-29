package com.paul9537.care.user.model;

public class Profile {
	private int userId;
	private String type;
	private String imagePath;
	private int age;
	private int wage;
	private String information;
	private String primaryAddress;
	private String secondaryAddress;
	private String thirdAddress;
	private String possibleDays;
	private String possibleActivity;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getWage() {
		return wage;
	}
	public void setWage(int wage) {
		this.wage = wage;
	}
	public String getInformation() {
		return information;
	}
	public void setInformation(String information) {
		this.information = information;
	}
	public String getPrimaryAddress() {
		return primaryAddress;
	}
	public void setPrimaryAddress(String primaryAddress) {
		this.primaryAddress = primaryAddress;
	}
	public String getSecondaryAddress() {
		return secondaryAddress;
	}
	public void setSecondaryAddress(String secondaryAddress) {
		this.secondaryAddress = secondaryAddress;
	}
	public String getThirdAddress() {
		return thirdAddress;
	}
	public void setThirdAddress(String thirdAddress) {
		this.thirdAddress = thirdAddress;
	}
	public String getPossibleDays() {
		return possibleDays;
	}
	public void setPossibleDays(String possibleDays) {
		this.possibleDays = possibleDays;
	}
	public String getPossibleActivity() {
		return possibleActivity;
	}
	public void setPossibleActivity(String possibleActivity) {
		this.possibleActivity = possibleActivity;
	}
	

}
