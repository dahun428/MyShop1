
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<body>
	<!-- 파일업로드 Modal -->
	<div class="modal fade" id="staticBackdrop" data-backdrop="static"
		data-keyboard="false" tabindex="-1" role="dialog"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">

			<form action="BBSfileUploadPageActionUpdate.do" method="post"
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
							<div class="custom-file">
								<input type="file" class="custom-file-input" id="bbs-file-set"
									name="bbs-file"> <label class="custom-file-label"
									for="bbs-file-set">파일을 첨부하세요</label>
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
</body>
</html>