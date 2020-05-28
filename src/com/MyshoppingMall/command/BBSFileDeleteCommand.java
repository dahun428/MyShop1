package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.FileUtil;
import com.MyshoppingMall.bbs.util.DirectoryUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.service.BbsFileService;


public class BBSFileDeleteCommand implements Bcommand {

	BbsFileService fileService = new BbsFileService();
	/**
	 * ajax 통신
	 */
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		
		String directory = DirectoryUtil.getSQL("fileDirectory.properties");
		String fileName = request.getParameter("bbs");
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);
		
		if(bbsFile == null) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_NO_FIND);
		} else {			
			try {
				FileUtil.fileDeleteExecute(request, bbsFile, directory);
				request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_DELETE_SUCCESS);
				
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_DELETE_FAIL);
			}
		}
	}

}
