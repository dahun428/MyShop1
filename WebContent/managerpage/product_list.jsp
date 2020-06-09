<%@page import="com.MyshoppingMall.bbs.util.NumberUtil"%>
<%@page
	import="com.MyshoppingMall.bbs.checkFunction.ProductCheckFunction"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<div class="wrapper">
		<div class="header">
			<%@ include file="../common/headerPage.jsp"%>

		</div>
		<div class="navi">
			<%@ include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<div class="body-navi">
				<%@ include file="../managerpage/managepage_nav.jsp" %>
			</div>
			<table class="table small text-truncate">
				<thead class="thead-dark">
					<tr>
						<th>상품번호</th>
						<th>브랜드</th>
						<th>상품명</th>
						<th>카테고리</th>
						<th>가격</th>
						<th>할인가격</th>
						<th>할인율</th>
						<th>잔여재고</th>
						<th>상품평점</th>
						<th>제조사</th>
						<th>등록일</th>
						<th>상세보기</th>
						<th>상품수점</th>
						<th>상품노출여부</th>
						<th>노출취소</th>
					</tr>
				</thead>
				<tbody class="table-light">
					<c:choose>
						<c:when
							test="${isSuccess eq ProductCheckFunction.PRODUCT_RETRIEVE_SUCCESS}">
							<c:forEach items="${products }" var="product">
								<tr>
									<td>${product.no }</td>
									<td>${product.brand }</td>
									<td>${product.productName }</td>
									<td>${product.category }</td>
									<td>${product.price }</td>
									<td>${product.discountPrice }</td>
									<td>${NumberUtil.doubleWithComma((1 - (product.discountPrice / product.price))*100)}%</td>
									<td>${product.stock }</td>
									<td>${product.likes }</td>
									<td>${product.maker }</td>
									<td>${product.registeredDate }</td>
									<td><a href="product_detail.jsp?no=${product.no }">상세</a></td>
									<td><a href="product_update.jsp?no=${product.no }">수정</a></td>
									<td>${product.viewYn }</td>
									<td><a href="product_update.jsp?no=${product.no }">노출취소</a></td>
								</tr>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="15" class="text-center">등록된 상품이 없습니다.</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>


		<div class="footer">
			<%@ include file="../common/footerPage.jsp"%>
		</div>
	</div>

</body>
</html>