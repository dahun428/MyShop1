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

		request.setCharacterEncoding("UTF-8");


		String directory = "C:\\Projects\\Jsp\\BBS\\WebContent\\upload";
		String fileName = request.getParameter("userfileName");
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);

		System.out.println(bbsFile);
		System.out.println("delete");
		
		if(bbsFile == null) {
			request.setAttribute("isSuccess", BBSFileCheckFunction.BBS_FILE_NO_FIND);
		} else {	
			PrintWriter out = null;
			try {
				BbsFileUtil.fileDeleteExecute(request, bbsFile, directory);
				response.setContentType("text/html;charset=utf-8");
				out = response.getWriter();
				int isSuccess = BBSFileCheckFunction.BBS_FILE_DELETE_SUCCESS;
				out.print(isSuccess);
			} catch (Exception e) {
				e.printStackTrace();
				out = response.getWriter();
				int isSuccess = BBSFileCheckFunction.BBS_FILE_DELETE_FAIL;
				out.print(isSuccess);
			} 
		} 

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String directory = "C:\\Projects\\Jsp\\BBS\\WebContent\\upload";
		String fileName = request.getParameter("userfileName");
		
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);
		
		System.out.println("fileName : "+fileName);
		PrintWriter out = null;
		
		if(bbsFile == null) {
			out = response.getWriter();
			int isSuccess = BBSFileCheckFunction.BBS_FILE_DELETE_FAIL;
			out.print(isSuccess);
		}else {
			out = response.getWriter();
			
			try {
				BbsFileUtil.fileDeleteExecute(request, bbsFile, directory);
				String name = bbsFile.getFileRealName();
				out.print(name);
				fileService.deleteFile(bbsFile.getFileNo());
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		

	}

}
