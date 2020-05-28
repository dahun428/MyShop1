<%@page import="com.MyshoppingMall.bbs.vo.Bbs"%>
<%@page import="java.util.List"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
	<div class="wrapper">
		<div class="header">
			<%@include file="../common/headerPage.jsp"%>
		</div>
		<div class="navi">
			<%@include file="../common/navPage.jsp"%>
		</div>
			<div>
				<!-- table container row -->
				<table class="table">
					<thead class="table-dark text-center">
						<tr class="small">
							<th>No</th>
							<th>제목</th>
							<th>작성자</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${bbsList.hasNoBbs() }">
							<tr class="text-center">
								<td colspan="4">게시글이 없습니다.</td>
							</tr>
						</c:if>
						<c:forEach items="${bbsList.content }" var="bbs">
							<tr class="text-sm-center text-truncate">
								<td>${bbs.bbsNo}</td>
								<td><div>
										<a href="BBSviewPage.do?bbsId=${bbs.bbsId }">${bbs.bbsTitle }</a>
									</div></td>
								<td>${bbs.user.userId }</td>
								<td>${bbs.bbsDate }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

				<div class="row">
					<!-- write btn -->
					<div class="col-md-4">
						<a href="BBSPage/BBSwritePage.jsp" class="btn btn-primary">글쓰기</a>
					</div>
					<!-- pagenation -->
					<div class="col-md-4">
						<ul class="pagination justify-content-center">
							<c:if test="${bbsList.hasBbs() }">
								<c:if test="${bbsList.searchValue != null }">

									<c:choose>
										<c:when test="${bbsList.startPage >5 }">
											<li class="page-item"><a class="page-link"
												href="BBSsearch.do?pageNo=${bbsList.startPage-5 }&searchFilter=${bbsList.searchFilter}&searchValue=${bbsList.searchValue}">Prev</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item disabled"><a class="page-link"
												href="BBSsearch.do?pageNo=${bbsList.startPage-5 }&searchFilter=${bbsList.searchFilter}&searchValue=${bbsList.searchValue}"
												tabindex="-1" aria-disabled="true">Prev</a></li>
										</c:otherwise>
									</c:choose>

									<c:forEach var="pNo" begin="${bbsList.startPage }"
										end="${bbsList.endPage }">
										<c:choose>
											<c:when test="${pNo == bbsList.currentPage }">
												<li class="page-item active" aria-current="page"><a
													class="page-link"
													href="BBSsearch.do?pageNo=${pNo }&searchFilter=${bbsList.searchFilter}&searchValue=${bbsList.searchValue}">${pNo }<span
														class="sr-only">(current)</span>
												</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													href="BBSsearch.do?pageNo=${pNo }&searchFilter=${bbsList.searchFilter}&searchValue=${bbsList.searchValue}">${pNo }</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:choose>
										<c:when test="${bbsList.endPage < bbsList.totalPage }">
											<li class="page-item"><a class="page-link"
												href="BBSsearch.do?pageNo=${bbsList.startPage+5 }&searchFilter=${bbsList.searchFilter}&searchValue=${bbsList.searchValue}">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item disabled"><a class="page-link"
												href="BBSsearch.do?pageNo=${bbsList.startPage+5 }&searchFilter=${bbsList.searchFilter}&searchValue=${bbsList.searchValue}"
												tabindex="-1" aria-disabled="true">Next</a></li>
										</c:otherwise>
									</c:choose>
								</c:if>

								<c:if test="${bbsList.searchValue == null }">
									<c:choose>
										<c:when test="${bbsList.startPage >5 }">
											<li class="page-item"><a class="page-link"
												href="BBSmainPage.do?pageNo=${bbsList.startPage-5}">Prev</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item disabled"><a class="page-link"
												href="BBSmainPage.do?pageNo=${bbsList.startPage-5}"
												tabindex="-1" aria-disabled="true">Prev</a></li>
										</c:otherwise>
									</c:choose>

									<c:forEach var="pNo" begin="${bbsList.startPage }"
										end="${bbsList.endPage }">
										<c:choose>
											<c:when test="${pNo == bbsList.currentPage }">
												<li class="page-item active" aria-current="page"><a
													class="page-link" href="BBSmainPage.do?pageNo=${pNo }">${pNo }<span
														class="sr-only">(current)</span>
												</a></li>
											</c:when>
											<c:otherwise>
												<li class="page-item"><a class="page-link"
													href="BBSmainPage.do?pageNo=${pNo }">${pNo }</a></li>
											</c:otherwise>
										</c:choose>
									</c:forEach>

									<c:choose>
										<c:when test="${bbsList.endPage < bbsList.totalPage }">
											<li class="page-item"><a class="page-link"
												href="BBSmainPage.do?pageNo=${bbsList.startPage+5}">Next</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item disabled"><a class="page-link"
												href="BBSmainPage.do?pageNo=${bbsList.startPage+5}"
												tabindex="-1" aria-disabled="true">Next</a></li>
										</c:otherwise>
									</c:choose>
								</c:if>
							</c:if>
						</ul>
					</div>
					<!-- searchbar -->
					<div class="col-md-4">
						<form class="form-inline my-2 my-lg-0 " method="get"
							name="bbsSearchForm" action="BBSsearch.do">
							<select class="custom-select my-1 mr-sm-2"
								id="inlineFormCustomSelectPref" name="searchFilter">
								<option selected value="bbsSearchTitle">제목</option>
								<option value="bbsSearchContent">내용</option>
								<option value="bbsSearchWriter">작성자</option>
							</select> <input class="form-control mr-sm-2" type="search"
								name="searchValue" placeholder="검색어를 입력하세요" aria-label="Search"
								style="width: 150px;">
							<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
						</form>
					</div>
				</div>
			</div>
			<!-- table container end -->
		</div>

		<div class="footer">
			<%@include file="../common/footerPage.jsp"%>
		</div>	
</body>
</html>