
/**
 * 회원가입시 확인 javascript
 * @returns
 */
function infoConfirm(){
	
	let pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;
	let pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	let pattern_num = /[0-9]/;
	let userIdValue = document.join_form.userId.value;
	let userPwValue = document.join_form.userPassword.value;
	let userPwCkValue = document.join_form.userPassword_chk.value;
	let userNameValue = document.join_form.userName.value;
	let userEmailValue = document.join_form.userEmail.value;
	
	if(userIdValue.length == 0){
		alert('아이디를 입력해주세요');
		join_form.userId.focus();
		return;
	}
	if(userIdValue.length < 3){
		alert('아이디는 3글자 이상이어야 합니다.');
		join_form.userId.focus();
		return;
	}
	if(pattern_spc.test(userIdValue) || pattern_kor.test(userIdValue)){
		alert('아이디는 특수문자, 한글을 포함할 수 없습니다.')
		join_form.userId.focus();
		return;
	}
	if(userPwValue.length == 0){
		alert('비밀번호를 입력해주세요');
		join_form.userPassword.focus();
		return;
	}
	if(userPwValue.length < 4){
		alert('비밀번호는 4글자 이상이어야 합니다.');
		join_form.userPassword.focus();
		return;
	}
	if(userPwValue != userPwCkValue){
		alert('비밀번호가 일치하지 않습니다.');
		join_form.userPassword.focus();
		return;
	}
	if(userNameValue.length == 0){
		alert('이름을 입력해주세요');
		join_form.userName.focus();
		return;
	}	
	if(pattern_spc.test(userNameValue) || pattern_num.test(userNameValue)){
		alert('이름에는 특수문자나 숫자가 포함될 수 없습니다.');
		join_form.userName.focus();
		return;
	}
	if(userEmailValue.length == 0){
		alert('이메일을 입력해주세요');
		join_form.userEmail.focus();
		return;
	}
	document.join_form.submit();
}
function bbsInfoConfirm(){
	
	let pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;
	let bbsTitleValue = document.BBSwriteForm.bbsTitle.value;
	let bbsContentValue = document.BBSwriteForm.bbsContent.value;
	
	if ( bbsTitleValue.length == 0 || bbsTitleValue.length <= 4 ){
		alert('제목을 4글자 이상 입력해주세요.');
		BBSwriteForm.bbsTitle.focus();
		return;
	}
	if ( pattern_spc.test(bbsTitleValue) ){
		alert('제목에는 특수문자가 포함될 수 없습니다.');
		BBSwriteForm.bbsTitle.focus();
		return;
	}
	if ( bbsContentValue.length == 0 || bbsContentValue.length <= 10 ){
		alert('내용을 10글자 이상 입력해주세요.');
		BBSwriteForm.bbsContent.focus();
		return;
	}
	
	document.BBSwriteForm.submit();
}
$(document).ready(function(){
	
	$('#board-delete-btn').click(function(){
		
		$.ajax({
			type:"POST",
			dataType:"json",
			contentType:"application/json; charset=utf-8",
			url:"BBSDeleteCommand",
			success:function(result){
				var userId = JSON.parse(result.userId);
				var userPassword = JSON.parse(result.userPassword);
				var isSuccess = result.isSuccess;
				if(isSuccess === -1){
					$('#user_check').text("아이디나 비밀번호가 다릅니다.");
					return;
				} else if (isSuccess === 1){
					alert('삭제되었습니다.');
					location.href='/BBSmainPage.do';
				} else {
					alert('실패하였습니다. 관리자에게 문의 해주세요');
				}
			}
			
			
		});		
	});
	
});



