package com.MyshoppingMall.command;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.service.BbsService;
import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

@WebServlet("/BBSDeleteCommand")
public class BBSDeleteCommand implements Bcommand {

	public void execute(HttpServletRequest request, HttpServletResponse response) {

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
		
		
//		String bbsDeleteCheckId = request.getParameter("bbs_delete_checkId");
//		String bbsDeleteCheckPw = request.getParameter("bbs_delete_check_Pw");
//		
//		int bbsId = Integer.parseInt(request.getParameter("bbsId"));
//		
//		UserDAO userDao = UserDAO.getInstance();
//		int isExistUser = userDao.loginUser(bbsDeleteCheckId, bbsDeleteCheckPw);
//		
//		if(isExistUser != UserCheckFunction.SUCCESS_LOGIN) {
//			request.setAttribute("isSuccess", UserCheckFunction.NO_EXIST_ID);
//			return;
//		}
//		
//		BbsDAO bbsDao = new BbsDAO();
//		Bbs bbs = bbsDao.getBbsBybbsId(bbsId);
//		Gson gson = new Gson();
//		JsonObject obj = new JsonObject();
//		
//		int isSuccess = 0;
//		if(bbs == null) {
//			isSuccess = BBSCheckFunction.BBS_DELETE_FAIL;
//			return;
//		}
//		if(!bbs.getUser().getUserId().equals(bbsDeleteCheckId)) {
//			isSuccess =  BBSCheckFunction.BBS_NO_EQUALS;
//			return;
//		}
//		
//		try {
//			
//			PrintWriter out = response.getWriter();
//			response.setContentType("application/json");
//			
//			
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//		
//		
//		if(bbs == null) {
//			request.setAttribute("isSuccess", BBSCheckFunction.BBS_DELETE_FAIL);
//		} else if(!bbs.getUser().getUserId().equals(bbsDeleteCheckId) ) {
//			request.setAttribute("isSuccess", BBSCheckFunction.BBS_NO_EQUALS);
//		} else {			
//			bbs.setBbsAvailable(bbs.getBbsAvailable() - 1);
//			bbsDao.updateBbs(bbs);
//			request.setAttribute("isSuccess", BBSCheckFunction.BBS_DELETE_SUCCESS);
//			
//		}
		
	}

}
