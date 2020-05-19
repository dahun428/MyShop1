package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;

public class BLoginCommand implements Bcommand{
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("userPassword");
		
		UserDAO userDao = UserDAO.getInstance();
		int login = userDao.loginUser(userId, userPassword);
		request.setAttribute("login", login);
		if(login == UserCheckFunction.SUCCESS_LOGIN) {
			request.setAttribute("userId", userId);	
		}
	}
}
