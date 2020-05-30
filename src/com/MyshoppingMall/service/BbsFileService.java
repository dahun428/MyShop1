package com.MyshoppingMall.service;

import com.MyshoppingMall.bbs.dao.BbsFileDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.User;

public class BbsFileService {

	BbsFileDAO fileDao = new BbsFileDAO();
	/**
	 * 업로드기능
	 * 	BbsFile 객체 업로드 한 후 불러와야 하는 메소드 FileNO의 값을 리턴 받는다.
	 */
	public int uploadFile (BbsFile bbsFile) {
		
		BbsFile file = new BbsFile();
		file.setFileName(bbsFile.getFileName());
		file.setFileRealName(bbsFile.getFileRealName());

		User user = new User();
		user.setUserId(bbsFile.getUser().getUserId());
		file.setUser(user);
		
		return fileDao.addBbsFile(file);
	}
	public void deleteFile(BbsFile bbsFile) {
		fileDao.deleteFileByFileNo(bbsFile);
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
