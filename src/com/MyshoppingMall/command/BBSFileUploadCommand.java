package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.BbsFileUtil;
import com.MyshoppingMall.bbs.util.DirectoryUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.User;
import com.MyshoppingMall.service.BbsFileService;
import com.MyshoppingMall.service.UserService;

public class BBSFileUploadCommand implements Bcommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String directory = DirectoryUtil.getSQL("fileLoad.directory");

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		UserService userService = new UserService();
		if(userService.getUserByUserId(userId)) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_FAIL);
			
		} else {
			
			BbsFile bbsFile = BbsFileUtil.fileUploadExecute(request, directory);
			
			User user = new User();
			user.setUserId(userId);
			bbsFile.setUser(user);
			
			BbsFileService fileService = new BbsFileService();
			
			fileService.uploadFile(bbsFile);

			request.setAttribute("directory", directory);
			request.setAttribute("Bfile", bbsFile);
			request.setAttribute("bbsFileName", bbsFile.getFileName());
			request.setAttribute("bbsFileRealName", bbsFile.getFileRealName());
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS);
			
		}



	}

}
