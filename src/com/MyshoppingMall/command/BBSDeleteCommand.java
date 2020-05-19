package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.checkFunction.UserCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.dao.UserDAO;
import com.MyshoppingMall.bbs.vo.Bbs;

public class BBSDeleteCommand implements Bcommand {

	public void execute(HttpServletRequest request, HttpServletResponse response) {

		String bbsDeleteCheckId = request.getParameter("bbs_delete_checkId");
		String bbsDeleteCheckPw = request.getParameter("bbs_delete_check_Pw");
		
		int bbsId = Integer.parseInt(request.getParameter("bbsId"));
		
		
		
		
		UserDAO userDao = UserDAO.getInstance();
		int isExistUser = userDao.loginUser(bbsDeleteCheckId, bbsDeleteCheckPw);
		
		if(isExistUser != UserCheckFunction.SUCCESS_LOGIN) {
			request.setAttribute("isSuccess", UserCheckFunction.NO_EXIST_ID);
			return;
		}
		
		BbsDAO bbsDao = new BbsDAO();
		Bbs bbs = bbsDao.getBbsBybbsId(bbsId);
		
		if(bbs == null) {
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_DELETE_FAIL);
		} else if(!bbs.getUser().getUserId().equals(bbsDeleteCheckId) ) {
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_NO_EQUALS);
		} else {			
			bbs.setBbsAvailable(bbs.getBbsAvailable() - 1);
			bbsDao.updateBbs(bbs);
			request.setAttribute("isSuccess", BBSCheckFunction.BBS_DELETE_SUCCESS);
			
		}
		
	}

}
