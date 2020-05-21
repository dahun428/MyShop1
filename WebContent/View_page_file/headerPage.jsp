<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ include file="../session_id/session_check_id.jsp"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyShoppingMall</title>
<link href="css/bootstrap.css" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/79413e27e1.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/file_js_function.js"></script>
<script type="text/javascript" src="js/check_js_function.js"></script>
</head>
<body>
<header class="header">
	<div class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<div class="navbar-header">
				<a href="index.jsp" class="navbar-brand navbar-center">The Mall<i class="far fa-heart"></i></a>
				
			</div>
			<div>
				<form class="form-inline my-2 my-lg-0">
      			<input class="form-control mr-sm-2" type="search" placeholder="검색어를 입력하세요" aria-label="Search" style="width:300px;">
      			<button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
    			</form>
			</div>
			
		<c:choose>
			<c:when test="${sessionScope.userId == null}">	
			<div class="navbar-text navbar-right">
					<button type="button" class="btn btn-outline-light" onclick="location.href='loginPage.jsp'">로그인</button>
					<button type="button" class="btn btn-outline-light" onclick="location.href='joinPage.jsp'">회원가입</button>				
					<button type="button" class="btn btn-outline-light"><i class="fas fa-shopping-cart"></i></button>
			</div>
			
			</c:when>
			<c:when test="${sessionScope.userId != null }">
			 
			<div class="navbar-text navbar-right">
					<span class="text-success"><c:out value="${userId }"/>님 안녕하세요</span>	
					<button type="button" class="btn btn-outline-light" onclick="location.href='logout.do'">로그아웃</button>
					<button type="button" class="btn btn-outline-light" onclick="location.href='../'">회원정보수정</button>				
					<button type="button" class="btn btn-outline-light"><i class="fas fa-shopping-cart"></i></button>
			</div>
			</c:when>
			
		</c:choose>
		
		
		</div>
	</div>
</header>
</body>
</html>