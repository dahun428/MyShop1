<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ include file="../session_id/session_check_id.jsp"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>MyShoppingMall</title>


</head>
<body>
	<header class="header">
		<div class="navbar navbar-dark bg-dark">
			<div class="container-fluid">
				<div class="d-flex bd-highlight">


					<div class="d-flex justify-content-start">
						<!-- brand name -->
						<div class="navbar-header">
							<div class="" style="text-align: center">
								<a href="index.jsp" class="navbar-brand">The Mall</a>
							</div>
							<!-- 로그인 토글 -->

						</div>

					</div>
					<!-- 검색 -->
					<div class="d-flex justify-content-center">
						<div class="search-box ">
							<form method="get" style="margin: 0 auto;">
								<div id="custom-search-input">
									<div class="input-group col-md-12">
										<input type="text" class="form-control"
											placeholder="상품을 검색하세요" /> <span class="input-group-btn">
											<button class="btn btn-dark btn-info btn-lg " type="button">
												<i class="fas fa-search"></i>
											</button>
										</span>
									</div>
								</div>
							</form>
						</div>
					</div>


					<div class="d-flex justify-content-end">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#navbarSupportedContentLogin"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fas fa-user"></i>
						</button>
					</div>
				</div>





				<!-- 로그인 메뉴 -->
				<div class="col-xs-4 col-lg-4" style="text-align: right;">
					<div class="collapse navbar-collpase"
						id="navbarSupportedContentLogin">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item">
								<div class="navbar-text">
									<c:choose>
										<c:when test="${sessionScope.userId == null}">

											<button type="button" class="btn btn-outline-light"
												onclick="location.href='loginPage.jsp'">로그인</button>
											<button type="button" class="btn btn-outline-light"
												onclick="location.href='joinPage.jsp'">회원가입</button>
											<button type="button" class="btn btn-outline-light">
												<i class="fas fa-shopping-cart"></i>
											</button>

										</c:when>
										<c:when test="${sessionScope.userId != null }">


											<span class="text-success"><c:out value="${userId }" />님
												안녕하세요</span>
											<button type="button" class="btn btn-outline-light"
												onclick="location.href='logout.do'">로그아웃</button>
											<button type="button" class="btn btn-outline-light"
												onclick="location.href='../'">회원정보수정</button>
											<button type="button" class="btn btn-outline-light">
												<i class="fas fa-shopping-cart"></i>
											</button>

										</c:when>
									</c:choose>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>

	</header>
</body>
</html>