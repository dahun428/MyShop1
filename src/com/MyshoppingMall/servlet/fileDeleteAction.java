package com.MyshoppingMall.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.FileUtil;
import com.MyshoppingMall.bbs.util.DirectoryUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.service.BbsFileService;

import sun.rmi.server.Dispatcher;

/**
 * Servlet implementation class fileDeleteAction
 */
@WebServlet("/fileDeleteAction")
public class fileDeleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;

	BbsFileService fileService = new BbsFileService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String directory = "/upload";
		String fileName = request.getParameter("userfileName");
		
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);
		
		System.out.println("fileName : "+fileName);
		PrintWriter out = response.getWriter();
		
		int isSuccess = 0;
		
		try {
			
			FileUtil.fileDeleteExecute(request, bbsFile, directory);			
			fileService.deleteFile(bbsFile.getFileNo());
			isSuccess = BBSFileCheckFunction.BBS_FILE_DELETE_SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			isSuccess = BBSFileCheckFunction.BBS_FILE_DELETE_FAIL;
		} finally {
			response.setContentType("text/html;charset=utf-8");
			out.print(isSuccess);
			request.setAttribute("isSuccess", isSuccess);
//			RequestDispatcher dispatcher = request.getRequestDispatcher("BBSPage/BBSwritePage.jsp");
//			dispatcher.forward(request, response);
		}
		

	}

}
