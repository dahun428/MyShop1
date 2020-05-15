package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.service.BbsFileService;

public class BBSFileCommand implements Bcommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String fileName = request.getParameter("fileName");
		String fileRealName = request.getParameter("fileRealName");
		
		BbsFileService service = new BbsFileService();
		int isSuccess = service.uploadFile(fileName, fileRealName);
		
		if(isSuccess == BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS);
		} else {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_FAIL);
		}
		
	}
}
