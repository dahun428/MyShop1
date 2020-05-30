package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.util.FileUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.service.BbsFileService;

public class BBSFileDownloadCommand implements Bcommand {

	BbsFileService fileService = new BbsFileService();
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String directory = "C:\\Projects\\Jsp\\BBS\\WebContent\\upload";
		String fileName = request.getParameter("file");
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);
		try {
			FileUtil.fileDownloadExecute(request, response, bbsFile.getFileName(), directory);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
