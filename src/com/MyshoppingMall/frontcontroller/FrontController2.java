package com.MyshoppingMall.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.command.BBSCommand;
import com.MyshoppingMall.command.BBSDeleteCommand;
import com.MyshoppingMall.command.BBSFileDownloadCommand;
import com.MyshoppingMall.command.BBSFileUploadCommand;
import com.MyshoppingMall.command.BBSUpdateCommand;
import com.MyshoppingMall.command.BBSWriteCommand;
import com.MyshoppingMall.command.BBSViewCommand;
import com.MyshoppingMall.command.BJoinCommand;
import com.MyshoppingMall.command.Bcommand;
import com.MyshoppingMall.command.BLoginCommand;

/**
 * Servlet implementation class FrontController
 */
public class FrontController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController2() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		actionDo(request, response);
	}
	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		
		String viewPage = null;
		Bcommand command = null;
		String url = request.getRequestURI();
		String conPath = request.getContextPath();
		String com = url.substring(conPath.length());
		
		if (com.equals("/BBSmainPage.do")) {
			command = new BBSCommand();
			command.execute(request, response);
			viewPage = "BBSmainPage.jsp";
		//게시판 검색 페이지
		} else if (com.equals("/BBSsearch.do")) {
			command = new BBSCommand();
			command.execute(request, response);
			viewPage = "BBSmainPage.do";
		//게시판 작성 페이지
		} else if (com.equals("/BBSwrite.do")) {
			command = new BBSWriteCommand();
			command.execute(request, response);
			viewPage = "BBSwriteCheck.jsp";
		//게시판 자세히 보기 페이지
		} else if(com.equals("/BBSviewPage.do")) {
			command = new BBSViewCommand();
			command.execute(request, response);
			viewPage = "BBSviewPage.jsp";
		//게시판 수정기능 실행
		} else if(com.equals("/BBSupdatePage.do")) {
			command = new BBSViewCommand();
			command.execute(request, response);
			viewPage = "BBSupdatePage.jsp";
		} else if(com.equals("/BBSupdate.do")) {
			command = new BBSUpdateCommand();
			command.execute(request, response);
			viewPage = "BBSviewPage.do";
		//게시판 삭제 기능 실행	
		} else if(com.equals("/BBSdelete.do")) {
			command = new BBSDeleteCommand();
			command.execute(request, response);
			viewPage = "BBSdeleteCheck.jsp";
		//게시판 파일 업로드 기능 실행
		} else if(com.equals("/BBSfileUploadPageAction.do")) {
			command = new BBSFileUploadCommand();
			command.execute(request, response);
			viewPage = "BBSwritePage.jsp";
		//게시판 파일 업로드 수정 기능 실행	
		} else if(com.equals("/BBSfileUploadPageActionUpdate.do")) {
			command = new BBSFileUploadCommand();
			command.execute(request, response);
			viewPage = "BBSupdatePage.jsp";
		} 
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
		
	}

}
