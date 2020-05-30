
/**
 * 회원가입시 확인 javascript
 * @returns
 */

$(document).ready(function(){
//	$(document).ready(function(){
//
//		$('#board-delete-btn').click(function(){
//
//			$.ajax({
//				type:"POST",
//				dataType:"json",
//				contentType:"application/json; charset=utf-8",
//				url:"BBSDeleteCommand",
//				success:function(result){
//					var userId = JSON.parse(result.userId);
//					var userPassword = JSON.parse(result.userPassword);
//					var isSuccess = result.isSuccess;
//					if(isSuccess === -1){
//						$('#user_check').text("아이디나 비밀번호가 다릅니다.");
//						return;
//					} else if (isSuccess === 1){
//						alert('삭제되었습니다.');
//						location.href='/BBSmainPage.do';
//					} else {
//						alert('실패하였습니다. 관리자에게 문의 해주세요');
//					}
//				}
//
//
//			});		
//		});
//
//	});

	$('#board-delete-btn').click(function(){
		
		
		let objArray = get_form_data($('#bbs-delete-form'));
		let userId = objArray.userId;
		let userPassword = objArray.userPassword;
		if(userId.length < 1){
			$("input[name=userId]").change_placeholder('아이디를 입력해주세요');
			return;
		}
		if(userPassword.length < 1){
			$('input[name=userPassword]').change_placeholder('비밀번호를 입력해주세요');
			return;
		}
		let formData = JSON.stringify(objArray);
		$.ajax({
			type:"POST",
			data:{formData:formData},
			dataType:"json",
			url:"deleteBBSAction",
			success:function(result){
				if(result.isSuccess === "fail" ){
					$('#bbs-user-check').text('아이디 혹은 비밀번호가 다릅니다.');
					
				} else if(result.isSuccess === "success"){
					alert('글이 삭제되었습니다.');
					location.href='/BBSmainPage.do';
				} else {
					alert('오류입니다.');
				}
			}
		});
	});
});
//function infoConfirm(){
//
//	let pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;
//	let pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
//	let pattern_num = /[0-9]/;
//	let userIdValue = document.join_form.userId.value;
//	let userPwValue = document.join_form.userPassword.value;
//	let userPwCkValue = document.join_form.userPassword_chk.value;
//	let userNameValue = document.join_form.userName.value;
//	let userEmailValue = document.join_form.userEmail.value;
//
//	if(userIdValue.length == 0){
//		alert('아이디를 입력해주세요');
//		join_form.userId.focus();
//		return;
//	}
//	if(userIdValue.length < 3){
//		alert('아이디는 3글자 이상이어야 합니다.');
//		join_form.userId.focus();
//		return;
//	}
//	if(pattern_spc.test(userIdValue) || pattern_kor.test(userIdValue)){
//		alert('아이디는 특수문자, 한글을 포함할 수 없습니다.')
//		join_form.userId.focus();
//		return;
//	}
//	if(userPwValue.length == 0){
//		alert('비밀번호를 입력해주세요');
//		join_form.userPassword.focus();
//		return;
//	}
//	if(userPwValue.length < 4){
//		alert('비밀번호는 4글자 이상이어야 합니다.');
//		join_form.userPassword.focus();
//		return;
//	}
//	if(userPwValue != userPwCkValue){
//		alert('비밀번호가 일치하지 않습니다.');
//		join_form.userPassword.focus();
//		return;
//	}
//	if(userNameValue.length == 0){
//		alert('이름을 입력해주세요');
//		join_form.userName.focus();
//		return;
//	}	
//	if(pattern_spc.test(userNameValue) || pattern_num.test(userNameValue)){
//		alert('이름에는 특수문자나 숫자가 포함될 수 없습니다.');
//		join_form.userName.focus();
//		return;
//	}
//	if(userEmailValue.length == 0){
//		alert('이메일을 입력해주세요');
//		join_form.userEmail.focus();
//		return;
//	}
//	document.join_form.submit();
//}
//게시판 글 확인

$(document).ready(function(){

	$('#bbs-write-btn').bbs_add_function($('#BBSwriteForm'));
	$('#bbs-update-btn').bbs_add_function($('#BBSupdateForm'));
});

$.fn.bbs_add_function = function(form){
	
	this.click(function(){
		let pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;		
		let objArray = get_form_data(form);
		let bbsTitle = objArray.bbsTitle;
		let bbsContennt = objArray.bbsContent;
		let bbsTitleValue = $('input[name=bbsTitle]').val();
		let bbsContentValue =  $('#bbsContent').val();
		let fileNo = objArray.fileNo;

		if ( bbsTitleValue.length == 0 || bbsTitleValue.length <= 4 ){
			alert('제목을 4글자 이상 입력해주세요.');
			bbsTitle.focus();
			return;
		}
		if ( pattern_spc.test(bbsTitleValue) ){
			alert('제목에는 특수문자가 포함될 수 없습니다.');
			bbsTitle.focus();
			return;
		}
		if ( bbsContentValue.length == 0 || bbsContentValue.length <= 10 ){
			alert('내용을 10글자 이상 입력해주세요.');
			bbsContent.focus();
			return;
		}
		form.submit();
	});
}

//$(document).ready(function(){
//
//	$('#board-delete-btn').click(function(){
//
//		$.ajax({
//			type:"POST",
//			dataType:"json",
//			contentType:"application/json; charset=utf-8",
//			url:"BBSDeleteCommand",
//			success:function(result){
//				var userId = JSON.parse(result.userId);
//				var userPassword = JSON.parse(result.userPassword);
//				var isSuccess = result.isSuccess;
//				if(isSuccess === -1){
//					$('#user_check').text("아이디나 비밀번호가 다릅니다.");
//					return;
//				} else if (isSuccess === 1){
//					alert('삭제되었습니다.');
//					location.href='/BBSmainPage.do';
//				} else {
//					alert('실패하였습니다. 관리자에게 문의 해주세요');
//				}
//			}
//
//
//		});		
//	});
//
//});

//form에 해당하는 값 입력시 해당값 object배열로 변환
function get_form_data($form){
	let unindexed_array = $form.serializeArray();
	let indexed_array = {};
	$.map(unindexed_array, function(n, i){
		indexed_array[n['name']] = n['value'];
	});
	return indexed_array;
}

