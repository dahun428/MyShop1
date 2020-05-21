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
	<%@include file="../View_page_file/headerPage.jsp"%>
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

	<%@include file="../View_page_file/navPage.jsp"%>
	
	<div class="container">
		<div style="margin: 3rem;">
			<form action="BBSupdate.do" method="post" name="BBSwriteForm">
				<table class="table table-stripted"
					style="text-align: center; border: 1px solid #dddddd;">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">게시판
								글쓰기 양식</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="text" class="form-control"
								name="bbsTitle" maxlength="50" value="${bbs.bbsTitle }"/></td>
						</tr>
						<!-- 파일 업로드  -->
						<tr>
							<td style="text-align: left;"><button type="button"
									class="btn btn-primary" data-toggle="modal"
									data-target="#staticBackdrop">파일업로드</button>
								 <c:if test="${isSuccess eq BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS}">
	
										<%
										String path = request.getContextPath();
										String fileName = (String) request.getAttribute("bbsFileName");
										String fileRealName = (String) request.getAttribute("bbsFileRealName");
										out.write("<a href=\"" + path + "/downloadAction?file=" + URLEncoder.encode(fileName, "utf-8") + "\">" + fileRealName
											+ "</a>");
										%>
											
								</c:if>
							</td>
						</tr>
						<!-- 이미지 업로드 -->
						<tr>
							<td style="text-align: left;"><button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#staticBackdrop">이미지 업로드</button>
							</td>
						</tr>
						<tr>
							<td><textarea  class="form-control" placeholder="글내용"
									name="bbsContent" maxlength="2048" style="height: 350px;"><c:out value="${bbs.bbsContent }"/></textarea></td>
						</tr>
					</tbody>
				</table>
				<input type="hidden" name="bbsId" value="${bbs.bbsId }" />
				<input type="hidden" name="fileNo" value="${fileNo }" />
				<input type="button" class="btn btn-dark pull-right" value="수정하기"
					onclick="bbsInfoConfirm();" />
			</form>
		</div>
	</div>
	<%@include file="../View_page_file/footerPage.jsp"%>
	<!-- 파일업로드 Modal Page -->
	<%@include file="../BBS_file_page/bbsFileModalUpdate.jsp"%>
</body>
</html>