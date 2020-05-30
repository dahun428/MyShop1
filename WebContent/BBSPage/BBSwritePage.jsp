<%@page import="java.net.URLEncoder"%>
<%@page import="com.MyshoppingMall.bbs.vo.Bbs"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@page
	import="com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


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
			<%
				request.setCharacterEncoding("utf-8");

			if (userId == null) {
				PrintWriter writer = response.getWriter();
				writer.println("<script>");
				writer.println("alert('로그인이 필요한 페이지입니다.');");
				writer.println("history.go(-1);");
				writer.println("</script>");
			}
			%>
		</div>
		<div class="navi">
			<%@include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<!-- table container-row -->
			<div class="container" style="margin-top: 2rem;">
				<form action="/BBSwrite.do" method="post" name="BBSwriteForm"
					id="BBSwriteForm">
					<table class="table">
						<thead class="table-dark text-center">
							<tr>
								<th colspan="4">게시판 글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글제목" name="bbsTitle" maxlength="50" /></td>
							</tr>
							<!-- 파일 업로드  -->
							<tr>
								<td style="text-align: left;"><button type="button"
										class="btn btn-primary" data-toggle="modal"
										data-target="#staticBackdrop" id="user-file-upload-btn" value="upload">파일업로드</button>
									<span id="file-upload-preview"></span>
								</td>
							</tr>
							<!-- 파일 업로드  end-->

							<!-- 이미지 업로드 -->
							<tr>
								<td style="text-align: left;"><button type="button"
										class="btn btn-primary" data-toggle="modal"
										data-target="#staticBackdrop">이미지 업로드</button></td>
							</tr>
							<!-- 이미지 업로드  end-->
							<tr>
								<td><textarea class="form-control" placeholder="글내용"
									id="bbsContent"	name="bbsContent" maxlength="2048" style="height: 350px;" /></textarea></td>
							</tr>
						</tbody>
					</table>
					<input id="write-page-file-no" type="hidden" name="fileNo" value="0" /> <input
						type="button" class="btn btn-dark pull-right" id="bbs-write-btn"
						value="글쓰기" />
				</form>
			</div>


		</div>
		<div class="footer">
			<%@include file="../common/footerPage.jsp"%>
		</div>
	</div>
	<!-- 파일업로드 Modal Page -->
	<%@include file="BBSfileModal.jsp"%>

</body>
</html>