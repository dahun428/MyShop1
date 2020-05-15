package com.MyshoppingMall.service;

import com.MyshoppingMall.bbs.dao.BbsFileDAO;
import com.MyshoppingMall.bbs.vo.BbsFile;

public class BbsFileService {

	public int uploadFile(String fileName, String fileRealName) {
		
		BbsFile bbsFile = new BbsFile();
		bbsFile.setFileName(fileName);
		bbsFile.setFileRealName(fileRealName);
		
		BbsFileDAO fileDao = new BbsFileDAO();
		int isSuccess = fileDao.addBbsFile(bbsFile);

		return isSuccess;
		
	}
	
	
	
	
	

	
}
