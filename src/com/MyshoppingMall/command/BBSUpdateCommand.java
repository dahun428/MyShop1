package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.vo.Bbs;

public class BBSUpdateCommand implements Bcommand {

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String bbsTitle = request.getParameter("bbsTitle");
		String bbsContent = request.getParameter("bbsContent");
		int fileNo = Integer.parseInt(request.getParameter("fileNo"));
		System.out.println("update filenO : " + fileNo);
		int bbsId = Integer.parseInt(request.getParameter("bbsId"));
		
		BbsDAO bbsDao = new BbsDAO();
		Bbs bbs = bbsDao.getBbsBybbsId(bbsId);
		
		bbs.setBbsTitle(bbsTitle);
		bbs.setBbsContent(bbsContent);
		bbs.setFileNo(fileNo);
		bbsDao.updateBbs(bbs);
		request.setAttribute("bbsId", bbsId);
		
	}

}
