<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
request.setCharacterEncoding("utf-8");
session.invalidate();
%>
<!DOCTYPE html>
<html>
<body>
<script type="text/javascript">
	alert('로그아웃되었습니다.');
	location.href='home.do';
</script>
</body>
</html>