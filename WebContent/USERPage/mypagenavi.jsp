<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="navbar navbar-expand-lg navbar-light bg-light">
				
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#mypage-nav" aria-controls="navbarSupportedContent"
		aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="mypage-nav"
		style="padding: 1rem;">
		<div id="mypage-navi">
			<ul class="nav flex-column">
				<li class="nav link">마이쇼핑</li>
				<li class="nav link"><a href="mypageOrderCheckpage.jsp">주문/배송조회</a></li>
				<li class="nav link"><a href="#">취소/반품/교환 내역</a></li>
				<li><hr /></li>
				<li class="nav link"><a href="mypageShoppingCart.jsp">장바구니</a></li>
				<li class="nav link"><a href="#">찜목록</a></li>
				<li class="nav link"><a href="#">포인트</a></li>
				<li><hr /></li>
			</ul>
			<ul class="nav flex-column">
				<li>마이활동</li>
				<li class="nav link"><a href="#">문의내역</a></li>
				<li class="nav link"><a href="#">리뷰</a></li>
				<li><hr /></li>
			</ul>
			<ul class="nav flex-column">
				<li class="nav link">마이정보</li>
				<li class="nav link"><a href="../mypageUserInfo.do">회원정보수정</a></li>
				<li class="nav link"><a href="mypageUserCancleMembership.jsp">회원탈퇴</a></li>
			</ul>
		</div>
	</div>
	</div>
</body>
</html>