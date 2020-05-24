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
	<%
		request.setCharacterEncoding("utf-8");

	%>
	<!-- header-user-controller modal -->
	<c:set value="${sessionScope.userId }" var="userId" />
	<c:choose>
		<c:when test="${userId == null }">
			<div class="modal fade" id="header-user-controller"
				data-backdrop="static" data-keyboard="false" tabindex="-1"
				role="dialog" aria-labelledby="header-user-controller-label"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="header-user-controller-label">
								Welcome to My Mall</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<!-- modal-body -->

							<div class="jumbotron">
								<form action="login.do" method="post">
									<div class="form-group">
										<input type="text" class="form-control" placeholder="아이디"
											name="userId" maxlength="20" />
									</div>
									<div class="form-group">
										<input type="password" class="form-control" placeholder="비밀번호"
											name="userPassword" maxlength="20" />
									</div>
									<input type="submit" class="btn btn-dark form-control"
										value="로그인" />
								</form>
								<div aria-label="breadcrumb">
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><a href="#"><small>아이디찾기</small></a></li>
										<li class="breadcrumb-item"><a href="#"><small>비밀번호찾기</small></a></li>
										<li class="breadcrumb-item"><a href="USERPage/joinPage.jsp"><small>회원가입</small></a></li>
									</ol>
								</div>
							</div>

						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
							<button type="button" class="btn btn-primary">확인</button>
						</div>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="modal fade" id="header-user-controller"
				data-backdrop="static" data-keyboard="false" tabindex="-1"
				role="dialog" aria-labelledby="header-user-controller-label"
				aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h6 class="modal-title" id="header-user-controller-label">
								${userId } 님 방문을 환영합니다.</h6>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<!-- modal-body -->
							<div class="jumbotron">
								<table class="table table-hover text-info"
									style="font-size: 1.33rem;">
									<tr>
										<th><strong>포인트</strong></th>
										<td><a href="#" class="btn btn-info btn-md"> 200 <i
												class="fas fa-coins"></i>
										</a></td>
									</tr>
									<tr>
										<th>장바구니</th>
										<td><a href="#" class="btn btn-info btn-md"> <i
												class="fas fa-shopping-cart"></i><span
												class="badge badge-light" style="margin-left: 0.5rem">4</span>
										</a></td>
									</tr>
									<tr>
										<th>찜목록</th>
										<td><a href="#" class="btn btn-info btn-md"> <i
												class="fas fa-hand-holding-heart"></i><span
												class="badge badge-light" style="margin-left: 0.5rem">4</span>
										</a></td>
									</tr>
									<tr>
										<th>주문/배송조회</th>
										<th><a href="#" class="btn btn-info btn-md"> <i
												class="fas fa-truck-pickup"></i><span
												class="badge badge-light" style="margin-left: 0.5rem">4</span>
										</a></th>
									</tr>
								</table>
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">확인</button>
								<a href="logout.do" class="btn btn-primary">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>