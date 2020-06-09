package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.vo.User;
import com.MyshoppingMall.service.UserService;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class userUpdateAction
 */
@WebServlet("/userUpdateAction")
public class userUpdateAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		String jsonData = request.getParameter("jsonData");
		System.out.println(jsonData	);
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(jsonData);
		String userPassword = element.getAsJsonObject().get("userPassword").getAsString();
		String userEmail = element.getAsJsonObject().get("userEmail").getAsString();
		System.out.println("userPassword : " + userPassword);
		System.out.println("userEmail : " + userEmail);
		
		UserService service = new UserService();
		User beforUser = service.getUserById(userId);
		beforUser.setUserEmail(userEmail);
		beforUser.setUserPassword(userPassword);
		System.out.println("beforeUser " + beforUser);
		int isSuccess = service.updateUser(beforUser);
		
		String result = "fail";
		if(isSuccess == UserCheckFunction.UPDATE_FAIL) {
			result = "fail";
		} else {
			result = "success";
		}
		
		response.setCharacterEncoding("utf-8");
		
		JsonObject jObj = new JsonObject();
		jObj.addProperty("result", result);
		Gson gson = new Gson();
		String sendData = gson.toJson(jObj);

		PrintWriter out = response.getWriter();
		out.print(sendData);
		
		System.out.println(sendData);
	}

}
