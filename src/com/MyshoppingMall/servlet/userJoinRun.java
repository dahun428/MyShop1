package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class userJoinAction2
 */
@WebServlet("/userJoinRun")
public class userJoinRun extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	request.setCharacterEncoding("utf-8");
	
	String jsonForm = request.getParameter("formData");
	System.out.println(jsonForm);
	JsonParser parser = new JsonParser();
	JsonElement element = parser.parse(jsonForm);
	String userId = element.getAsJsonObject().get("join-user-id").getAsString();
	System.out.println("userId"+userId);
	String userName = element.getAsJsonObject().get("userName").getAsString();
	System.out.println("userName"+userName);
//	
//	System.out.println(jsonForm);
//	JsonParser parser = new JsonParser();
//	JsonElement element = parser.parse(jsonForm);
//	System.out.println(element);
	}

}
