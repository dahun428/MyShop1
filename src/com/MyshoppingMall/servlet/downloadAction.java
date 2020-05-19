package com.MyshoppingMall.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.util.BbsFileUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.service.BbsFileService;

/**
 * Servlet implementation class downloadAction
 */
@WebServlet("/downloadAction")
public class downloadAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	BbsFileService fileService = new BbsFileService();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String directory = "C:\\Projects\\Jsp\\BBS\\WebContent\\upload";
		String fileName = request.getParameter("file");
		System.out.println("fileName : " + fileName);
		BbsFile bbsFile = fileService.getBbsFileByFileName(fileName);
		System.out.println(bbsFile);
		try {
			BbsFileUtil.fileDownloadExecute(request, response, bbsFile, directory);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
