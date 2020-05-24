<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyShoppingMall</title>
<body>
<div class="wrapper">
	<div class="header">
<%@include file="common/headerPage.jsp" %>
	
	</div>
	<div class="navi">
<%@include file="common/navPage.jsp"  %>
	
	</div>
	<div class="carousel-page">
<%@include file="common/carouselPage_main.jsp" %>
	
	</div>
	<div class="body">
<%@include file="common/mainPage.jsp" %>
	
	</div>
	<div class="footer">
<%@include file="common/footerPage.jsp" %>
	</div>
</div>
</body>
</html>	