package com.MyshoppingMall.service;

import java.util.List;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.dao.BbsDAO;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.BbsPage;
import com.MyshoppingMall.bbs.vo.User;

public class BbsService {

	private BbsDAO bbsDao = new BbsDAO();
	private int size = 10;


	public BbsPage getBbsPage(int pageNum) {
		
		int total = bbsDao.selectCount();
		List<Bbs> content = bbsDao.getAllList((pageNum-1) * size, pageNum * size);

		return new BbsPage(total, pageNum, size, content);
	}
	public BbsPage getBbsPageByTitle(int pageNum, String title) {
			List<Bbs> contents = bbsDao.getListByTitle((pageNum-1) * size, pageNum * size, title);
			int total = bbsDao.selectCountForSeach("title", title);

			return new BbsPage(total, pageNum, size, contents);
	}
	public BbsPage getBbsPageByContent(int pageNum, String content) {
			List<Bbs> contents = bbsDao.getListByContent((pageNum-1) * size, pageNum * size, content);
			int total = bbsDao.selectCountForSeach("content", content);

			return new BbsPage(total, pageNum, size, contents);
	}
	public BbsPage getBbsPageByWriter(int pageNum, String writer) {
			List<Bbs> contents = bbsDao.getListByWriter((pageNum-1) * size, pageNum * size, writer);
			int total = bbsDao.selectCountForSeach("writer", writer);

			return new BbsPage(total, pageNum, size, contents);
	}
	
	public int addBbs(String bbsTitle, String bbsContent, String userId, int fileNo) {
		
		Bbs bbs = new Bbs();
		bbs.setBbsTitle(bbsTitle);
		bbs.setBbsContent(bbsContent);
		
		User user = new User();
		user.setUserId(userId);
		bbs.setUser(user);
		
		BbsFile bbsFile = new BbsFile();
		bbsFile.setFileNo(fileNo);
		bbs.setBbsFile(bbsFile);
		
		int isSuccess = bbsDao.addBbs(bbs);
		
		if(isSuccess ==  BBSCheckFunction.BBS_WRITE_SUCCESS) {
			return  BBSCheckFunction.BBS_WRITE_SUCCESS;
		}
		
		return BBSCheckFunction.BBS_DATABASE_ERROR;
	}
	public Bbs getBbsBybbsId(int bbsId) {
		
		Bbs bbs = bbsDao.getBbsBybbsId(bbsId);
		return bbs;
	}
	
	
	
}
