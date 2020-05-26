package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.JoinCheckFunction;
import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.MyshoppingMall.bbs.vo.User;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class userJoinAction2
 */
@WebServlet("/userJoinRun")
public class userJoinRun extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String jsonForm = request.getParameter("jsonData");
		System.out.println(jsonForm);
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(jsonForm);
		String userId = element.getAsJsonObject().get("userId").getAsString();
		String userPassword = element.getAsJsonObject().get("userPassword").getAsString();
		String userName = element.getAsJsonObject().get("userName").getAsString();
		String userGender =  element.getAsJsonObject().get("userGender").getAsString();
		String userEmail =  element.getAsJsonObject().get("userEmail").getAsString();
		User user = new User();
		user.setUserId(userId);
		user.setUserPassword(userPassword);
		user.setUserName(userName);
		user.setUserGender(userGender);
		user.setUserEmail(userEmail);
		
		UserDAO userDao = new UserDAO();
		Gson gson = new Gson();
		JsonObject obj = new JsonObject();
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");		
		
		int isSuccess = userDao.addUser(user);
		
		obj.addProperty("isSuccess", isSuccess);
		
		String json = gson.toJson(obj);
		out.print(json);
		out.flush();
		
	}

}
