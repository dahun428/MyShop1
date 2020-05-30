
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<body>
	<div class="modal fade" id="delete_modal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">해당 글을 삭제하시겠습니까?</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form method="post" id="bbs-delete-form">
					<div class="jumbotron">
						<h5 id="myModalLabel">회원정보를 다시 입력해주세요</h5>
						<br />
						<div class="form-group">
							<input type="text" class="form-control" placeholder="아이디"
								name="userId" maxlength="20" />
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호"
								name="userPassword" maxlength="20" />
						</div>
						<div style="font-size: small; color:#CD1F48;" id="bbs-user-check"></div>
					</div>
					<div class="modal-footer">
						<input type="hidden" name="bbsId" value="${bbs.bbsId }" />
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
						<button type="button" class="btn btn-primary"
							id="board-delete-btn">삭제</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>