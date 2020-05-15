<%@page import="java.io.PrintWriter"%>
<%@page import="com.MyshoppingMall.bbs.util.UserCheckFunction"%>
<%@page import="com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction"%>
<%@page import="com.MyshoppingMall.bbs.dao.UserDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%@include file="../View_page_file/headerPage.jsp"%>
	<c:choose>
		<c:when test="${isSuccess eq  UserCheckFunction.NO_EXIST_ID}">
			<script>
				alert('존재하지 않는 회원입니다.');
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${isSuccess eq BBSCheckFunction.BBS_DELETE_FAIL }">
			<script>
				alert('유효하지 않은 값입니다. 다시 시도해주세요.');
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${isSuccess eq BBSCheckFunction.BBS_NO_EQUALS }">
			<script>
				alert('회원정보가 일치하지 않습니다.');
				history.go(-1);
			</script>
		</c:when>
		<c:when test="${isSuccess eq BBSCheckFunction.BBS_DELETE_SUCCESS }">
			<script>
				alert('삭제 되었습니다.');
				location.href = 'BBSmainPage.do';
			</script>
		</c:when>
	</c:choose>

</body>
</html>