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
	<%@include file="View_page_file/navPage.jsp"%>
	<%
		request.setCharacterEncoding("utf-8");

	if (userId != null) {
		PrintWriter writer = response.getWriter();
		writer.println("<script>");
		writer.println("alert('이미 로그인 되어있습니다.');");
		writer.println("location.href = 'index.jsp';");
		writer.println("</script>");
	}
	%>
	<div class="container">
		<div class="row justify-content-md-center" style="padding-top: 20px;">

			<div class="col-md-auto">
				<div class="jumbotron">
					<form action="join.do" method="post" name="join_form"
						class="form-horizontal">
						<table class="table">
							<thead>
								<tr>
									<th colspan="2">
										<h3 class="h3" style="text-align: center;">회원가입</h3>
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="form-group">
											<input type="text" class="form-control" placeholder="아이디"
												name="userId" maxlength="20" id="userId" />
										</div>
										<div style="text-align: left;" id="user-duplicate-check">
											<label for="user-duplicate-check">사용가능한 아이디입니다.</label>
										</div>
									</td>
									<td>
										<button class="btn btn-dark"><small>중복확인</small></button>
									</td>
								</tr>
								<tr>
									<td>
										<div class="form-group">
											<input type="password" class="form-control"
												placeholder="비밀번호" name="userPassword" maxlength="20"
												id="userPassword" />
										</div>
										<div class="form-group">
											<input type="password" class="form-control"
												placeholder="비밀번호 확인" name="userPassword_chk" maxlength="20"
												id="userPassword-check" />
										</div>
										<div style="text-align: left;" id="user-duplicate-check">
											<label for="user-duplicate-check">사용가능한 비밀번호입니다.</label>
										</div>

									</td>
									<td>
										<button class="btn btn-dark"><small>비밀번호확인</small></button>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="form-group">
											<input type="text" class="form-control" placeholder="이름"
												name="userName" maxlength="20" id="userName" />
										</div>
										<div class="form-group">
											<input type="email" class="form-control" placeholder="이메일"
												name="userEmail" maxlength="20" id="userEmail" />
										</div>
										<div class="form-group" style="text-align: center;">
											<div class="btn-group" data-toggle="buttons">
												<label class="btn btn-dark active"> <input
													type="radio" name="userGender" autocomplete="off"
													value="남자" checked />남자
												</label> <label class="btn btn-dark"> <input type="radio"
													name="userGender" autocomplete="off" value="여자" />여자
												</label>
											</div>

										</div>
										<div>
											<input type="checkbox"> <label for=""><small>이용약관
													및 개인정보 처리 방침에 동의합니다.</small></label>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
						<input type="button" class="btn btn-dark form-control"
							value="회원가입" onclick="infoConfirm();" />
					</form>
					<div style="margin-top: 1rem;">
						<small>이미 계정이 있으신가요?</small>
						<div style="margin-left: 1rem; display: inline-block;">
							<a href="loginPage.jsp">로그인</a>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<%@include file="../View_page_file/footerPage.jsp"%>
</body>
</html>