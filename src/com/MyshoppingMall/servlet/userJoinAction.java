package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class userJoinAction
 */
@WebServlet("/userJoinAction")
public class userJoinAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
	
		String jsonId = request.getParameter("jsonId");
		System.out.println(jsonId);
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(jsonId);
		String userId = element.getAsJsonObject().get("id").getAsString();
		System.out.println("userId : "+userId);
		
		UserDAO userDao = new UserDAO();
		int isSuccess = userDao.existUser(userId);
		System.out.println("exist : "+isSuccess);
		
		Gson gson = new Gson();
		JsonObject obj = new JsonObject();
		
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		if(isSuccess == UserCheckFunction.NON_EXIST_USER) {
			
		} else {
			isSuccess =  UserCheckFunction.EXIST_USER;
		}
		obj.addProperty("isSuccess", isSuccess);
		String json = gson.toJson(obj);
		
		out.print(json);
		out.flush();
	}

}
