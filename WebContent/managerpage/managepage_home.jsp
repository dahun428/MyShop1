<%@page
	import="com.MyshoppingMall.bbs.checkFunction.ProductCheckFunction"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<%@ include file="../common/headerPage.jsp"%>

		</div>
		<div class="navi">
			<%@ include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<div class="body-navi">
				<%@ include file="../managerpage/managepage_nav.jsp" %>
			</div>
			<div>
				관리자 페이지 입니다.	
			</div>
			
		</div>


		<div class="footer">
			<%@ include file="../common/footerPage.jsp"%>
		</div>
	</div>

</body>
</html>