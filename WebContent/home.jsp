<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyShoppingMall</title>
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/79413e27e1.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/file_js_function.js"></script>
<script type="text/javascript" src="js/check_js_function.js"></script>
<body>
<div class="wrapper">
	<div class="header">
<%@include file="View_page_file/headerPage.jsp" %>
	
	</div>
	<div class="navi justify-content-center">
<%@include file="View_page_file/navPage.jsp"  %>
	
	</div>
	<div class="carousel-page">
<%@include file="View_page_file/carouselPage_main.jsp" %>
	
	</div>
	<div class="body">
<%@include file="View_page_file/mainPage.jsp" %>
	
	</div>
	<div class="footer">
<%@include file="View_page_file/footerPage.jsp" %>
	
	
	</div>


</div>



</body>
</html>	