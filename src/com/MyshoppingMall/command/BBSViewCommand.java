package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.service.BbsFileService;
import com.MyshoppingMall.service.BbsService;

public class BBSViewCommand implements Bcommand {

	BbsService bbsService = new BbsService();
	BbsFileService fileService = new BbsFileService();

	public void execute(HttpServletRequest request, HttpServletResponse response) {
	
		int bbsId = Integer.parseInt(request.getParameter("bbsId"));
		Bbs bbs = bbsService.getBbsBybbsId(bbsId);
		
		if(bbs == null) {
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_NO_ARTICLE);
		} else {
			BbsFile bbsFile = fileService.getBbsFileByFileNo(bbs.getBbsFile().getFileNo());
			request.setAttribute("bbsFile", bbsFile);
			request.setAttribute("bbs", bbs);
		}
		
		
	}

}
