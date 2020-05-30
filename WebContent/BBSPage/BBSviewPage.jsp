<%@page import="com.MyshoppingMall.bbs.vo.BbsFile"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction"%>
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
				writer.println("location.href='BBSmainPage.do';");
				writer.println("</script>");
			}
			%>
		</div>
		<div class="navi">
			<%@include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<div class="container-fluid" style="margin-top: 2rem;">

				<!-- table container-row -->
				<div class="row">
					<div class="col-lg-1"></div>
					<div class="col-lg-10 col-sm-12 col-12">

						<table class="table table-stripted table-responsive-sm table-responsive-md table-repoinsive-xl">
							<thead class="table-dark text-center">
								<tr>
									<th colspan="4">게시판 글보기</th>
								</tr>
							</thead>
							<tbody>
								<tr class="text-center">
									<td colspan="4"><c:out value="${bbs.bbsTitle }" /></td>
								</tr>
								<tr class="text-center">
									<td class="table-borderless">No.</td>
									<td><c:out value="${bbs.bbsId }" /></td>
									<td>${bbs.user.userId }</td>
									<td>${bbs.bbsDate }</td>
								</tr>
								<tr class="text-center">
									<td>파일</td>
									<td><c:if test="${bbs.fileNo ne 0 }">
											<a href="downloadAction?file=${bbsFile.fileRealName }"><c:out
													value="${bbsFile.fileName }" /></a>
										</c:if></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td colspan="4" style="padding: 1.33rem;" class="text-break">
											<c:out value="${bbs.bbsContent }" />
											</td>
								</tr>
								<tr>
									<td colspan="4"></td>
								</tr>
							</tbody>
						</table>

						<a href="BBSmainPage.do" class="btn btn-primary">목록</a>
						<c:if test="${userId eq bbs.user.userId }">
							<a href="BBSupdatePage.do?bbsId=${bbs.bbsId }"
								class="btn btn-primary">수정</a>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#delete_modal">삭제</button>
						</c:if>
						<!-- userRecheck Modal -->
						<%@ include file="BBSdeleteModal.jsp" %>
						<!-- userRecheck Modal end -->
					</div>
					<div class="col-lg-1"></div>
				</div>
				<!-- table container-row -->
			</div>
		</div>
		<div class="footer">
			<%@include file="../common/footerPage.jsp"%>
		</div>
	</div>
</body>
</html>