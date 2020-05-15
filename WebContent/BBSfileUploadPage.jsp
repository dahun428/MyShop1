<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
<link href="css/bootstrap.css" rel="stylesheet">
<script src="https://kit.fontawesome.com/79413e27e1.js"></script>

</head>
<body>


	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#staticBackdrop">파일업로드</button>
	<p><c:out value="${fileName }"/></p>
	<p><c:out value="${fileRealName }"/></p>
	<!-- Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1" role="dialog"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">

			<form action="BBSfileUploadPageAction.do" method="post" enctype="multipart/form-data">
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
							<div class="custom-file">
								<input type="file" class="custom-file-input" id="bbs-file-set" name="bbs-file">
								<label class="custom-file-label" for="bbs-file-set">파일을 첨부하세요</label>
							</div>








						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
						<button type="submit" class="btn btn-primary">확인</button>
					</div>
				</div>
			</form>

		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/file_js_function.js"></script>
</body>
</html>
