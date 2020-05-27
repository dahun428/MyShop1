package com.MyshoppingMall.bbs.util;

public class ex {

	
	public static void main(String[] args) {
		String url = "http://localhost:8080/BBS/BBSPage/list.jsp";
		String conPath = "/BBS";
		String com = url.substring(conPath.length());
		System.out.println(com);
		
		String requestURI = "/BBS/BBSPage/list.jsp";
        int cmdIdx = requestURI.lastIndexOf("/")+1;
        System.out.println("cmdIdx : "+cmdIdx);
        String command = requestURI.substring(cmdIdx);
        System.out.println("command : " + command);
        
        String url1 = "http://localhost:8080/BBS/BBSPage/list.jsp";
		//request.getRequestURI
        url.lastIndexOf("/");
        //
        String url2 = requestURI.substring(0, cmdIdx);
        System.out.println("url2:"+url2);
	}
	
}
