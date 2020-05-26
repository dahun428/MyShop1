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
			<div class="container">
				<div class="row justify-content-md-center"
					style="padding-top: 20px;">

					<div class="col-md-auto">
						<div class="jumbotron">
							<form method="post" name="join_form" class="form-horizontal" id="join_form">
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
														name="userId" maxlength="20" id="join-user-id" />
												</div>
											</td>
											<td>
												<button type="button" class="btn btn-dark"
													id="user-duplicate-check-btn">
													<small>중복확인</small>
												</button>
											</td>
										</tr>
										<tr><td><div style="font-size:small; color:#CD1F48;" id="id_check"></div></td></tr>
										<tr>
											<td>
												<div class="form-group">
													<input type="password" class="form-control"
														placeholder="비밀번호" name="userPassword" maxlength="20"
														id="join-user-pw" />
												</div>
												<div class="form-group" id="join-user-pw-div">
													<input type="password" class="form-control"
														placeholder="비밀번호 확인" name="userPasswordCheck"
														maxlength="20" id="join-user-pw-check" />
												</div>
											</td>
											<td>
												<button class="btn btn-dark" type="button"
													id="join-user-pw-check-btn">
													<small>비밀번호확인</small>
												</button>
											</td>
											
										</tr>
										<tr><td><div style="font-size:small; color:#CD1F48;" id="pw_check"></div></td></tr>
										<tr>
											<td colspan="2">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="이름"
														name="userName" maxlength="20" id="join-user-name" />
												</div>
												<div style="font-size:small;" id="name_check"></div>
												<div class="form-group">
													<input type="email" class="form-control" placeholder="이메일"
														name="userEmail" maxlength="20" id="join-user-email" />
												</div>
												<div class="form-group" style="text-align: center;">
													<div class="btn-group" data-toggle="buttons">
														<label class="btn btn-dark"> <input type="radio"
															name="userGender" autocomplete="off" value="남자"
															 />남자
														</label> <label class="btn btn-dark"> <input type="radio"
															name="userGender" autocomplete="off" value="여자" />여자
														</label>
													</div>

												</div>
												<div>
													<input type="checkbox" name="userAgree" id="join-user-agree"> <label
														><small>이용약관 및 개인정보 처리 방침에 동의합니다.</small></label>
												</div>
												<div id="submit_check" style="font-size: small; color:#CD1F48;"></div>
											</td>
										</tr>
									</tbody>
								</table>
								<button class="btn btn-dark form-control" type="button"
									id="join-on-btn">회원가입</button>

							</form>
							<div style="margin-top: 1rem;">
								<small>이미 계정이 있으신가요?</small>
								<div style="margin-left: 1rem; display: inline-block;">
									<a href="#" id="header-user-controller">로그인</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="footer">
			<%@include file="../common/footerPage.jsp"%>
		</div>
	</div>

</body>
</html>