package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.json.simple.JSONObject;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class userLoginAction
 */
@WebServlet("/userLoginAction")
public class userLoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");

		String jsonParam = request.getParameter("json");
		
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(jsonParam);
		String userId = element.getAsJsonObject().get("id").getAsString();
		String userPassword = element.getAsJsonObject().get("pw").getAsString();

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
		PrintWriter out = response.getWriter();
		out.print(json);
		out.flush();
		

	}

}
