package com.MyshoppingMall.service;

import com.MyshoppingMall.bbs.dao.BbsFileDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.User;

public class BbsFileService {

	BbsFileDAO fileDao = new BbsFileDAO();
	
	public void uploadFile (BbsFile bbsFile) {

		BbsFile file = new BbsFile();
		file.setFileName(bbsFile.getFileName());
		file.setFileRealName(bbsFile.getFileRealName());

		Bbs bbs = new Bbs();
		bbs.setBbsId(bbsFile.getBbs().getBbsId());
		file.setBbs(bbs);

		User user = new User();
		user.setUserId(bbsFile.getUser().getUserId());
		file.setUser(user);

		BbsFileDAO fileDao = new BbsFileDAO();

		fileDao.addBbsFile(file);

	}

	public BbsFile getBbsFileByFileNo(int fileNo) {

		fileDao = new BbsFileDAO();
		BbsFile bbsFile = fileDao.getBbsFileByFileNo(fileNo);

		if(bbsFile != null) {
			return bbsFile;
		}

		return null;
	}
	public BbsFile getBbsFileByFileName(String fileName) {

		fileDao = new BbsFileDAO();
		BbsFile bbsFile = fileDao.getBbsFileByFileName(fileName);

		if(bbsFile != null) {
			return bbsFile;
		}

		return null;
	}
	public String getBbsFileRealNameByFileName(String fileName) {
		return fileDao.getBbsFileRealNameByFileName(fileName);
	}
	





}
