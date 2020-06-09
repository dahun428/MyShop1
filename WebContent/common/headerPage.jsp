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
				class="login-toggler-header col-6 col-md-3 order-md-2 text-right">
				<!-- modal btn -->
				<span>
				<button class="btn btn-dark" type="button" data-toggle="modal"
					data-target="#header-user-controller" id="header-user-handler">
					<i class="fas fa-user fa-2x"></i>
				</button>
				</span>
				<%@ include file="/USERPage/loginPage.jsp"%>
				<!-- navbar btn -->
				<span class="navbar-expand-lg">
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="true"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				</span>				
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