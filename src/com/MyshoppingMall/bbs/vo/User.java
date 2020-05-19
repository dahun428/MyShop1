package com.MyshoppingMall.bbs.vo;

import java.util.Date;

public class User {

	private String userId;
	private String userPassword;
	private String userName;
	private String userGender;
	private String userEmail;
	private Date RegisteredDate;

	public User() {}



	public Date getRegisteredDate() {
		return RegisteredDate;
	}
	public void setRegisteredDate(Date registeredDate) {
		RegisteredDate = registeredDate;
	}
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserGender() {
		return userGender;
	}

	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}



}
