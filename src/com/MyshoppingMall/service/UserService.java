package com.MyshoppingMall.service;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.MyshoppingMall.bbs.vo.User;

public class UserService {

	public boolean isUserExist(String userId) {
		
		UserDAO userDao = new UserDAO();
		if(userDao.existUser(userId) == UserCheckFunction.EXIST_USER) {
			return true;
		}
		return false;
	}
	public User getUserById(String userId) {
		UserDAO userDao = new UserDAO();
		return userDao.getUserByUserId(userId);
	}
	public int updateUser(User user) {
		UserDAO userDao = new UserDAO();
		User updataUser = userDao.getUserByUserId(user.getUserId());
		return userDao.updateUser(updataUser);
	}
	
}
