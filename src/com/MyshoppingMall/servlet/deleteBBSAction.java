package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class deleteBBSAction
 */
@WebServlet("/deleteBBSAction")
public class deleteBBSAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		try {
			request.setCharacterEncoding("utf-8");
			String formData = request.getParameter("formData");
			System.out.println("formData" + formData);
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(formData);
			String userId = element.getAsJsonObject().get("userId").getAsString();
			String userPassword = element.getAsJsonObject().get("userPassword").getAsString();
			int bbsId = element.getAsJsonObject().get("bbsId").getAsInt();
			System.out.println("userId : " + userId);
			
			UserDAO userDao = new UserDAO();
			int userExist = userDao.loginUser(userId, userPassword);
			
			Gson gson = new Gson();
			JsonObject jsonObj = new JsonObject();
			response.setContentType("application/json");
			PrintWriter out = response.getWriter();
			
			String isSuccess = null;
			if(userExist == UserCheckFunction.SUCCESS_LOGIN) {
				isSuccess = "success";
				BbsDAO bbsDao = new BbsDAO();
				Bbs bbs = bbsDao.getBbsBybbsId(bbsId);
				bbs.setBbsAvailable(0);
				bbsDao.updateBbs(bbs);
			} else {
				isSuccess = "fail";
			}
			jsonObj.addProperty("isSuccess", isSuccess);
			String jsonData = gson.toJson(jsonObj);
			out.print(jsonData);
			out.flush();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
