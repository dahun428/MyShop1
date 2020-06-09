<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MyShoppingMall</title>

</head>
<body>
	<div class="wrapper">
		<div class="header">
			<%@include file="../common/headerPage.jsp"%>
		</div>
		<div class="navi">
			<%@include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<div>
				<div class="row">
				<!-- my page navi -->
				<div class="col-sm-4 col-md-3" id="mypagenavi">
					<%@ include file="mypagenavi.jsp"%>
				</div>
				<!-- my page navi end -->
				<!-- my page contents -->
					<div
						class="col-sm-8 col-md-9">
						<h1>장바구니 페이지 입니다.</h1>
					</div>
				<!-- mypage contents end -->
				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../common/footerPage.jsp"%>
		</div>
	</div>
</body>
</html>