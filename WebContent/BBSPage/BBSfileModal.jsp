
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<body>
	<!-- 파일업로드 Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1" role="dialog"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<form action="/BBSfileUpload.do" method="post" id="fileUpload-form"
				enctype="multipart/form-data">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">파일업로드</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="form-group">
						<div class="modal-body">
							<label for="custom-file">파일첨부</label>
							<c:choose>
								<c:when
									test="${isSuccess == BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS }">
									<%
										request.setAttribute("inValidate", "inValidate");
									%>
									<input type="file" id="bbs-file-set"
										data-class-button="btn btn-default"
										data-class-input="form-control" data-icon-name="fa fa-upload"
										tabindex="-1"
										style="postion: absolute; clip: rect(0px, 0px, 0px, 0px);"
										class="custom-file-input" name="bbs-file" />
									<div class="bootstrap-filestyle input-group">
										<input type="text" id="userfile" class="form-control"
											name="userfile" value="${bbsFileName }" readonly="readonly" />
										<input type="hidden" id="user-file-real-name" value="${bbsFileRealName }" />	
										<span class="group-span-filestyle input-group-btn"
											tabindex="0" id="file-input-btn"><label for="bbs-file-set"
											class="btn btn-default"> <span class="glyphicon fa fa-upload"></span>
										</label>
										</span>

									</div>
								</c:when>
								<c:otherwise>
									<input type="file" id="bbs-file-set"
										data-class-button="btn btn-default"
										data-class-input="form-control" data-icon-name="fa fa-upload"
										tabindex="-1"
										style="postion: absolute; clip: rect(0px, 0px, 0px, 0px);"
										class="custom-file-input" name="bbs-file" />
									<div class="bootstrap-filestyle input-group">
										<input type="text" id="userfile" class="form-control"
											name="userfile" value="파일을 첨부해주세요" readonly="readonly" /> 
								
										<span class="group-span-filestyle input-group-btn" tabindex="0">
											<label for="bbs-file-set" class="btn btn-default"> <span
												class="glyphicon fa fa-upload"></span>
										</label>
										</span>
									</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button id="fileUpload-btn" type="submit" class="btn btn-primary">확인</button>
					</div>
				</div>
			</form>

		</div>
	</div>
</body>
</html>