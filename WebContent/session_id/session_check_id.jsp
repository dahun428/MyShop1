<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%

String userId = null;
if(session.getAttribute("userId") != null){
	userId = (String) session.getAttribute("userId");
}
%>

<!DOCTYPE html>
<html>
<body>
</body>
</html>