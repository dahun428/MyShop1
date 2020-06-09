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
			<%@include file="../common/headerPage.jsp"%>
		</div>
		<div class="navi">
			<%@include file="../common/navPage.jsp"%>
		</div>
		<div class="body">
			<div class="body-navi">
				<%@ include file="../managerpage/managepage_nav.jsp"%>
			</div>
			<div class="container">

				<div class="row">
					<div class="jumbotron text-left col-md-12"
						style="margin-top: 5rem;">
						<h4>상품 등록</h4>

						<form action="/addProduct.do" method="post" id="product-add-form">
							<table class="table">

								<tbody>
									<tr>
										<td colspan="4">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">상품명</div>
												</div>
												<input type="text" class="form-control" name="productName" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<small>브랜드</small>
													</div>
												</div>
												<input type="text" name="brand" class="form-control" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<input type="radio" value="inputBox" name="categoryRadio"
															id="category-input-radio" checked="checked" /> <small>카테고리</small>
													</div>
												</div>
												<input type="text" class="form-control" name="category"
													id="category-inputBox" />
											</div>
										</td>
										<td colspan="2">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<input type="radio" value="selectBox" name="categoryRadio"
															id="category-select-radio" /> <small>선택</small>
													</div>
												</div>
												<select name="categorySelect" id="category-selectBox"
													class="custom-select" disabled="disabled">
													<option value="">-선택-</option>
													<option value="기초케어">기초케어</option>
													<option value="메이크업">메이크업</option>
													<option value="화장소품">화장소품</option>
													<option value="남성케어">남성케어</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">제조사</div>
												</div>
												<input type="text" class="form-control" name="maker" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">가격</div>
												</div>
												<input type="number" class="form-control" name="price" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="2">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<input type="radio" value="price" name="discountSelect"
															id="discountSelect-price" checked="checked" /> <small>할인가입력</small>
													</div>
												</div>
												<input type="number" class="form-control"
													name="dicountPriceInput" id="discountPrice-price-select" />
											</div>
										</td>
										<td colspan="2">
											<div class="input-group">
												<div class="input-group-prepend">
													<label for="discountPrice-rate-select"
														class="input-group-text"> <input type="radio"
														value="rate" name="discountSelect"
														id="discountSelect-rate" /> <small>할인율입력</small>
													</label>
												</div>
												<select name="discountPriceRate" class="custom-select"
													id="discountPrice-rate-select" disabled="disabled">
													<option value="">-선택-</option>
													<option value="0.05">5%</option>
													<option value="0.10">10%</option>
													<option value="0.15">15%</option>
													<option value="0.20">20%</option>
													<option value="0.25">25%</option>
													<option value="0.30">30%</option>
													<option value="0.35">35%</option>
													<option value="0.40">40%</option>
													<option value="0.45">45%</option>
													<option value="0.50">50%</option>
													<option value="0.60">60%</option>
												</select>
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">
														<small>할인적용가격</small>
													</div>
												</div>
												<input type="text" disabled="disabled" name="discountPrice"
													class="form-control" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="input-group">
												<div class="input-group-prepend">
													<div class="input-group-text">적립포인트</div>
												</div>
												<input type="text" name="point" value="" disabled="disabled"
													class="form-control" />
											</div>
										</td>
									</tr>
									<tr>
										<td colspan="4">
											<div class="form-group" style="width: 100%;">
												<label for="">상품설명</label>
												<textarea class="form-control" rows="3"></textarea>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							<div id="inputCheck" class="text-danger text-center small"></div>
							<div class="text-right">
								<button class="btn btn-primary" type="button"
									id="product-submit-btn">상품등록</button>
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
		<div class="footer"></div>
	</div>
	<script src="../js/manager_js_function.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>