package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.User;
import com.MyshoppingMall.service.BbsService;

public class BBSWriteCommand implements Bcommand {

	BbsService bbsService = new BbsService();
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		String bbsTitle = request.getParameter("bbsTitle");
		String bbsContent = request.getParameter("bbsContent");
		String userId = (String) session.getAttribute("userId");
		int fileNo = Integer.parseInt(request.getParameter("fileNo"));

		int isSuccess = bbsService.addBbs(bbsTitle, bbsContent, userId, fileNo);
		
		if(isSuccess == BBSCheckFunction.BBS_WRITE_SUCCESS) {
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_WRITE_SUCCESS);
			
		} else {
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_DATABASE_ERROR);
			
		}
		
	}

}