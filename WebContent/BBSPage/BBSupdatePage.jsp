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

				<form action="BBSupdate.do" method="post" name="BBSwriteForm">
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
								<td style="text-align: left;"><button type="button"
										class="btn btn-primary" data-toggle="modal"
										data-target="#staticBackdrop">파일업로드</button> <c:choose>
										<c:when
											test="${bbs.fileNo ne 0 }">
											<c:set value="${bbsFile }" var="bbsFile"/>
											<c:set value="${bbsFile.fileName }" var="fileName"/>
											<c:set value="${bbsFile.fileRealName }" var="fileRealName"/>
											<a id="existFile" href="downloadAction?file=${bbsFile.fileRealName }"><c:out
													value="${bbsFile.fileName }" /></a>
											<button id="user-file-delete-btn"
												class="btn btn-primary float-right" type="button">삭제</button>
										</c:when>
									</c:choose></td>
							</tr>

							<!-- 이미지 업로드 -->
							<tr>
								<td style="text-align: left;"><button type="button"
										class="btn btn-primary" data-toggle="modal"
										data-target="#staticBackdrop">이미지 업로드</button></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글내용"
										name="bbsContent" maxlength="2048" style="height: 350px;"><c:out
											value="${bbs.bbsContent }" /></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" name="bbsId" value="${bbs.bbsId }" />
					<c:if
						test="${hasNofile eq BBSFileCheckFunction.BBS_FILE_FIND_SUCCESS}">
						<input type="hidden" name="fileNo" value="${bbsFile.fileNo }" />
					</c:if>
					<input type="button" class="btn btn-dark pull-right" value="수정하기"
						onclick="bbsInfoConfirm();" />
				</form>
			</div>
		</div>
	</div>
	<div class="footer">
		<%@include file="../common/footerPage.jsp"%>
	</div>
	<!-- 파일업로드 Modal Page -->
	<%@include file="BBSfileModalUpdate.jsp"%>
</body>
</html>