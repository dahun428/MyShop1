<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyShoppingMall</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/bootstrap.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/css/custom.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="https://kit.fontawesome.com/79413e27e1.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/file_js_function.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/user_js_function.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/js/bbs_js_function.js"></script>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String userId = null;
		if (session.getAttribute("userId") != null) {
			userId = (String) session.getAttribute("userId");
			String path = request.getContextPath();
		}
	%>
	<!-- header -->
	<!-- container -->
	<div class="container-fluid">
		<!-- navbar -->
		<div class="navbar navbar-dark bg-dark row">
			<!-- brand name -->
			<div class="navbar-header col-3 col-md-3 text-center">
				<span><a href="${pageContext.request.contextPath  }/home.jsp"
					class="navbar-brand mb-0 h1">The Mall</a></span>
			</div>
			<!-- brand name end -->
			<!-- login toggler start -->
			<div
				class="login-toggler-header col-3 col-md-3 order-md-2 text-right">
				<!-- modal btn -->
				<button class="btn btn-dark" type="button" data-toggle="modal"
					data-target="#header-user-controller" id="header-user-handler">
					<i class="fas fa-user fa-2x"></i>
				</button>
				<!-- header-user-controller modal -->
				<c:set value="${userId }" var="userId" />
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
									<form method="post" id="userLoginForm">
										<div class="modal-body">
											<!-- modal-body -->
											<div class="jumbotron">
												<div class="form-group">
													<input type="text" class="form-control" placeholder="아이디"
														name="userId" maxlength="20" id="userId" />
												</div>
												<div class="form-group">
													<input type="password" class="form-control"
														placeholder="비밀번호" name="userPassword" maxlength="20"
														id="userPassword" />
												</div>
												<div aria-label="breadcrumb">
													<ol class="breadcrumb">
														<li class="breadcrumb-item"><a href="#"><small>아이디찾기</small></a></li>
														<li class="breadcrumb-item"><a href="#"><small>비밀번호찾기</small></a></li>
														<li class="breadcrumb-item"><a
															href="USERPage/joinPage.jsp"><small>회원가입</small></a></li>
													</ol>
												</div>
											</div>

										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-secondary"
												data-dismiss="modal">취소</button>
											<button type="button" class="btn btn-primary"
												id="userLoginBtn">로그인</button>
										</div>
									</form>
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
										<div aria-label="breadcrumb">
											<ol class="breadcrumb">
												<li class="breadcrumb-item"><a href="#"><small>회원정보
															변경</small></a></li>
												<li class="breadcrumb-item"><a href="#"><small>마이페이지</small></a>
												</li>
												<li class="breadcrumb-item"><a href="#"><small>문의하기</small></a>
												</li>
											</ol>
										</div>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary"
											data-dismiss="modal">확인</button>
										<button type="button" class="btn btn-primary" id="userLogout">로그아웃</button>
									</div>
								</div>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<!-- header-user-controller modal end-->
			</div>
			<!-- login toggler end -->
			<!-- search bar start-->
			<div class="search-box col-md-6">
				<form action="#" method="get">
					<div id="custom-search-input">
						<div class="input-group">
							<input type="text" class="form-control" placeholder="상품을 검색하세요" />
							<span class="input-group-btn">
								<button class="btn bt-dark btn-info btn-lg" type="submit">
									<i class="fas fa-search fa-lg"></i>
								</button>
							</span>
						</div>
					</div>
				</form>
			</div>
			<!-- search bar end -->
		</div>
		<!-- navbar end -->
	</div>
	<!-- header end -->
</body>
</html>