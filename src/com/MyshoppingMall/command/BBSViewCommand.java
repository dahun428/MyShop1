package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
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
		System.out.println(bbsId);
		Bbs bbs = bbsService.getBbsBybbsId(bbsId);
		if(bbs == null) {
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_NO_ARTICLE);
			return;
		} else {
			request.setAttribute("bbs", bbs);
		}
//		int fileNo = Integer.parseInt(request.getParameter("fileNo"));
//		BbsFile bbsFile = fileService.getBbsFileByFileNo(fileNo);
//		if(bbsFile == null) {
//			request.setAttribute("hasNofile", BBSFileCheckFunction.BBS_FILE_FIND_SUCCESS);
//			return;
//		} else {
//			request.setAttribute("bbsFile", bbsFile);
//		}
	}

}
