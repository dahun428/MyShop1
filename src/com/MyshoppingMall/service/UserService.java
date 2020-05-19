package com.MyshoppingMall.service;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;

public class UserService {

	public boolean getUserByUserId(String userId) {
		
		UserDAO userDao = new UserDAO();
		if(userDao.existUser(userId) == UserCheckFunction.EXIST_USER) {
			return true;
		}
		
		return false;
	}
	
	
	
}
