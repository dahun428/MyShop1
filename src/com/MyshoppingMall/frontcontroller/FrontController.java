package com.MyshoppingMall.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.ServletSecurity;
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
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FrontController() {
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
		

		
		//로그인 페이지(disabled)
		if(com.equals("/login.do")) {
			command = new BLoginCommand();
			command.execute(request, response);
		//회원가입 페이지(disabled)
		} else if (com.equals("/join.do")){
			command = new BJoinCommand();
			command.execute(request, response);
			viewPage = conPath+"/joinCheck.jsp";
		//로그아웃 페이지(disabled)
		} else if (com.equals("/logout.do")) {
			viewPage = conPath+"/logoutCheck.jsp";
		//게시판 메인 페이지	
		} else if (com.equals("/BBSmainPage.do")) {
			command = new BBSCommand();
			command.execute(request, response);
			viewPage = "BBSPage/BBSmainPage.jsp";
		//게시판 검색 페이지
		} else if (com.equals("/BBSsearch.do")) {
			command = new BBSCommand();
			command.execute(request, response);
			viewPage = "BBSmainPage.do";
		//게시판 작성 페이지
		} else if (com.equals("/BBSwrite.do")) {
			command = new BBSWriteCommand();
			command.execute(request, response);
			int bbsId = (int) request.getAttribute("bbsId");
			viewPage = "BBSviewPage.do?bbsId="+bbsId;
			//viewPage = "BBSmainPage.do";
		//게시판 자세히 보기 페이지
		} else if(com.equals("/BBSviewPage.do")) {
			command = new BBSViewCommand();
			command.execute(request, response);
			viewPage = "BBSPage/BBSviewPage.jsp";
		//게시판 수정기능 실행
		} else if(com.equals("/BBSupdatePage.do")) {
			command = new BBSViewCommand();
			command.execute(request, response);
			viewPage = "BBSPage/BBSupdatePage.jsp";
		} else if(com.equals("/BBSupdate.do")) {
			command = new BBSUpdateCommand();
			command.execute(request, response);
			viewPage = "BBSviewPage.do";
		//게시판 삭제 기능 실행	
		} else if(com.equals("/BBSdelete.do")) {
			command = new BBSDeleteCommand();
			command.execute(request, response);
			viewPage = "BBSPage/BBSdeleteCheck.jsp";
		//게시판 파일 업로드 기능 실행
			
			
//		} else if(com.equals("/BBSfileUpload.do")) {
//			command = new BBSFileUploadCommand();
//			command.execute(request, response);
//			viewPage = "BBSPage/BBSwritePage.jsp";
		//게시판 파일 업로드 수정 기능 실행	
//		} else if(com.equals("/BBSfileUploadPageActionUpdate.do")) {
//			command = new BBSFileUploadCommand();
//			command.execute(request, response);
//			viewPage = "BBSPage/BBSupdatePage.jsp";
//		} else if (com.equals("/BBSwritePage.do")) {
//			viewPage = "BBSPage/BBSwritePage.jsp";
		//게시판 파일 업로드 수행
			
			
//		} else if(com.equals("/BBSfileUpload.do")) {
//			command = new BBSFileUploadCommand();
//			command.execute(request, response);
//			viewPage = "/BBSPage/BBSwritePage.jsp";
		}
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
		
	}

}
