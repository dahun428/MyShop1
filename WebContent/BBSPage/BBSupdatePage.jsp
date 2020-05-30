<%@page
	import="com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.MyshoppingMall.bbs.vo.Bbs"%>
<%@page import="java.util.List"%>
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
			<div class="container" style="margin-top: 2rem;">

				<form method="post" id="BBSupdateForm" name="BBSupdateForm" action="BBSupdate.do">
					<table class="table">
						<thead class="table-dark text-center">
							<tr>
								<th>게시판 글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control" name="bbsTitle"
									maxlength="50" value="${bbs.bbsTitle }" /></td>
							</tr>
							<!-- 파일 업로드  -->
							<tr>
								<c:choose>
									<c:when test="${bbsFile ne null }">
										<td style="text-align: left;"><button type="button"
												class="btn btn-dark" data-toggle="modal"
												data-target="#staticBackdrop" id="user-file-upload-btn"
												value="exist-file">파일삭제</button> <span id="file-upload-preview">
												<a id="existFile"
												href="../downloadAction?file=${bbsFile.fileRealName }">
													${bbsFile.fileName } </a>
										</span></td>
									</c:when>
									<c:otherwise>
										<td style="text-align: left;"><button type="button"
												class="btn btn-primary" data-toggle="modal"
												data-target="#staticBackdrop" id="user-file-upload-btn"
												value="upload">파일업로드</button> <span id="file-upload-preview"></span>
										</td>
									</c:otherwise>
								</c:choose>
							</tr>
							<!-- 이미지 업로드 -->
							<tr>
								<td style="text-align: left;"><button type="button"
										class="btn btn-primary" data-toggle="modal"
										data-target="#staticBackdrop">이미지 업로드</button></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글내용"
										id="bbsContent" name="bbsContent" maxlength="2048" style="height: 350px;"><c:out
											value="${bbs.bbsContent }" /></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" name="bbsId" value="${bbs.bbsId }" />
					<input id="write-page-file-no" type="hidden" name="fileNo" value="${bbs.fileNo }" />
					<input type="button" class="btn btn-dark pull-right" value="수정하기" id="bbs-update-btn"
						/>
				</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="../common/footerPage.jsp"%>
	</div>
	<!-- 파일업로드 Modal Page -->
	<%@include file="BBSfileModal.jsp"%>
</body>
</html>