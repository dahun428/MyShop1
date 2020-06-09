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
		</div>
		<div class="navi">
			<%@include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<div>
				<div class="row">
					<!-- my page navi -->
					<div class="col-sm-4 col-md-3" id="mypagenavi">
						<%@ include file="mypagenavi.jsp" %>
					</div>
					<!-- my page navi end -->
					<!-- my page contents -->
					<c:set value="${user }" var="user"/>
					<div class="col-sm-8 col-md-9">
						<div class="container">
							<div class="row">
								<div class="col-md-8 offset-md-2" style="margin-top: 1rem;">
									<div class="jumbotron">
										<div>
											<h6>${user.userName }님 반갑습니다.</h6>
											<hr />
										</div>
										<table class="table table-borderless small">
											<thead>
												<tr>
													<th>포인트</th>
													<th>회원등급</th>
													<th>가입일</th>
													<th>쿠폰</th>
												</tr>
											</thead>
											<tbody class="table-bordered">
												<tr>
													<td>200</td>
													<td>gold</td>
													<td>2020.05.05</td>
													<td>1개</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="col-md-8 offset-md-2 text-center">
									<div class="jumbotron">
										<h4>회원정보수정</h4>
										<hr />
										<form method="post" id="mypage-user-update-form">
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text" id="userId">아이디</span>
												</div>
												<input type="text" class="form-control" name="userId"
													maxlength="20" disabled="disabled" value="${user.userId }" id="userId" />
											</div>
											<div class="input-group mb-3">
												<div class="input-group-prepend">
													<span class="input-group-text" id="userName">이름</span>
												</div>
												<input type="text" class="form-control" name="userId"
													maxlength="20" disabled="disabled" value="${user.userName }" id="userName" />
											</div>
											<div class="form-group">
												<input type="password" class="form-control"
													placeholder="비밀번호" name="userPassword" maxlength="20"
													id="userPassword" />
											</div>
											<div class="form-group">
												<input type="password" class="form-control"
													placeholder="비밀번호 재확인" name="userPasswordChk" maxlength="20"
													id="userPasswordChk" />
											</div>
											<div class="form-group">
												<input type="text" class="form-control"
													name="userEmail" maxlength="20"
													id="userEmail" value="${user.userEmail }" />
											</div>
											<div id="usercheck-place" style="font-size:small; color:#CD1F48;"></div>	
											<button id="mypageLoginBtn" class="btn btn-primary" type="button">수정</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- mypage contents end -->
				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../common/footerPage.jsp"%>
		</div>
	</div>
</body>
</html>