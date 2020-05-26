package com.MyshoppingMall.command;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

public class BLoginCommand implements Bcommand{
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String userId = request.getParameter("userId");
		String userPassword = request.getParameter("userPassword");

		System.out.println("id : "+userId);
		System.out.println("pw : "+userPassword);
		UserDAO userDao = UserDAO.getInstance();
		int isSuccess = userDao.loginUser(userId, userPassword);

		Gson gson = new Gson();
		JsonObject obj = new JsonObject();

		if(isSuccess == UserCheckFunction.SUCCESS_LOGIN) {
			HttpSession session = request.getSession();
			session.setAttribute("userId", userId);
		}
		obj.addProperty("isSuccess", isSuccess);	
		String json = gson.toJson(obj);

		response.setContentType("application/json");

		try {
			PrintWriter out = response.getWriter();
			out.print(json);
			out.flush();
		} catch(Exception e) {

			e.printStackTrace();
		}


		//		request.setAttribute("login", login);
		//		if(login == UserCheckFunction.SUCCESS_LOGIN) {
		//			request.setAttribute("userId", userId);	
		//		}
	}
}
