package com.MyshoppingMall.command;

import java.util.Map;

import javax.servlet.RequestDispatcher;
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
public class BBSFileUploadCommand_disabled implements Bcommand{

	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		String directory = "/upload";
		HttpSession session = request.getSession();
		String userId = (String) session.getAttribute("userId");
		System.out.println("접속");
		System.out.println("업로드 위치 :" + directory);
		System.out.println("userId : "+ userId);

		try {
			
			
			Map<String, String> fileMap = FileUtil.fileUploadExecute(request, directory);
			
			String fileName = fileMap.get("fileName");
			String fileRealName = fileMap.get("fileRealName");
			System.out.println("fileUploadAction-fileName : "+ fileName );
			System.out.println("fileUploadAction-fileRealName : "+ fileRealName );
			
			
			BbsFile bbsFile = new BbsFile();
			bbsFile.setFileName(fileName);
			bbsFile.setFileRealName(fileRealName);
			User user = new User();
			user.setUserId(userId);
			bbsFile.setUser(user);
			
			BbsFileService fileService = new BbsFileService();
			System.out.println(bbsFile);
			int fileNo = fileService.uploadFile(bbsFile);
			
			request.setAttribute("bbsFileName", bbsFile.getFileName());
			request.setAttribute("bbsFileRealName", bbsFile.getFileRealName());
			request.setAttribute("fileNo", fileNo);
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS);
			System.out.println("업로드");
			System.out.println(fileNo);
		} catch (Exception e) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_UPLOAD_FAIL);
			System.out.println("업로드 실패");
		} 

	}

}
