package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
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
 * Servlet implementation class fileUploadAction
 */
@WebServlet("/fileUploadAction")
public class fileUploadAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

				
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
		} finally {
//			response.sendRedirect("BBSPage/BBSwritePage.jsp");
			RequestDispatcher dispatcher = request.getRequestDispatcher("BBSwritePage.jsp");
			dispatcher.forward(request, response);
		}

	}

}
