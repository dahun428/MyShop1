package com.MyshoppingMall.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.FileUtil;
import com.MyshoppingMall.bbs.util.DirectoryUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.User;
import com.MyshoppingMall.service.BbsFileService;
import com.MyshoppingMall.service.UserService;
/**
 * userId를 세션 값을 받아, 해당 유저가 있을 때만 파일 업로드 기능을 가능하게 한다.
 * BbsFile 클래스의 User객체에 userId 값을 전달하고, 업로드 기능을 실행한 후, 업로드가 완료된 파일의 이름들(fileName, fileRealName)
 * 을 BBSwritePage.jsp 에 정보를 전달한다.
 * 이후 isSuccess 값을 전달함으로써 BBSwritePage에 해당 값이 있을 경우에만 업로드된 파일 이름을 보일 수 있도록 한다.
 * @author JHTA
 *
 */
public class BBSFileUploadCommand implements Bcommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String directory = DirectoryUtil.getSQL("fileLoad.directory");

		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		
		UserService userService = new UserService();
		
		if(userService.getUserByUserId(userId)) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_FAIL);
			
		} else {
//			
////			BbsFile bbsFile = FileUtil.fileUploadExecute(request, directory);
//			
//			User user = new User();
//			user.setUserId(userId);
//			bbsFile.setUser(user);
//			
//			BbsFileService fileService = new BbsFileService();
//			
//			int fileNo = fileService.uploadFile(bbsFile);
//			
//			request.setAttribute("bbsFileName", bbsFile.getFileName());
//			request.setAttribute("bbsFileRealName", bbsFile.getFileRealName());
//			request.setAttribute("fileNo", fileNo);
//			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS);
//			System.out.println("업로드");
//			System.out.println(fileNo);
		}
		


	}

}
