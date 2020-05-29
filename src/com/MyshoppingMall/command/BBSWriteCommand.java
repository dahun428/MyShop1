package com.MyshoppingMall.command;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.util.StringUtil;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.User;
import com.MyshoppingMall.service.BbsService;
import com.google.gson.JsonElement;
import com.google.gson.JsonParser;

public class BBSWriteCommand implements Bcommand {

	BbsService bbsService = new BbsService();
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		try {
			request.setCharacterEncoding("utf-8");
			String jsonData = request.getParameter("jsonData");
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(jsonData);
			String bbsTitle = element.getAsJsonObject().get("bbsTitle").getAsString();
			String bbsContent = element.getAsJsonObject().get("bbsContent").getAsString();
			int fileNo = element.getAsJsonObject().get("fileNo").getAsInt();
			System.out.println(bbsTitle);
			System.out.println(bbsContent);
			System.out.println("fileNO  : "+fileNo);
			System.out.println("userId : " + userId);
			int bbsId = bbsService.addBbs(bbsTitle, bbsContent, userId, fileNo);
			System.out.println("bbsId " + bbsId);
			PrintWriter out = response.getWriter();
			out.print(bbsId);
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
//		String bbsTitle = request.getParameter("bbsTitle");
//		String bbsContent = request.getParameter("bbsContent");
//		System.out.println(userId);
		
		
	}

}
