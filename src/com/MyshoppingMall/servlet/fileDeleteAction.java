package com.MyshoppingMall.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.BbsFileUtil;
import com.MyshoppingMall.bbs.util.DirectoryUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.service.BbsFileService;

/**
 * Servlet implementation class fileDeleteAction
 */
@WebServlet("/fileDeleteAction")
public class fileDeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BbsFileService fileService = new BbsFileService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String directory = "C:\\Projects\\Jsp\\BBS\\WebContent\\upload";
		String fileName = request.getParameter("file");
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);
		
		System.out.println(bbsFile);
		System.out.println("delete");
		if(bbsFile == null) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_NO_FIND);
		} else {			
			try {
				BbsFileUtil.fileDeleteExecute(request, bbsFile, directory);
				response.setContentType("application/x-json; charset=UTF-8");
				request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_DELETE_SUCCESS);
			} catch (Exception e) {
				e.printStackTrace();
				request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_DELETE_FAIL);
			} 
		} 
		
	}

}
