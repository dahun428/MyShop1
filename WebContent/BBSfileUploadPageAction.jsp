<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%
String savePath = request.getServletContext().getRealPath("upload");
int sizeLimit = 1024*1024*15;
MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, new DefaultFileRenamePolicy());
String fileName = multi.getOriginalFileName("bbs-file");
String fileRealName = multi.getFilesystemName("bbs-file");

request.setAttribute("fileName", fileName);
request.setAttribute("fileRealName", fileRealName);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyShoppingMall</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/79413e27e1.js"></script>

</head>
<body>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/file_js_function.js"></script>
</body>
</html>
