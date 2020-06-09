
$(document).ready(function(){
	
});
$(document).ready(function(){
	
	let userId = $('#userId');
	let userPassword = $('#userPassword');
	userId.click(function(){
		userId.change_origin(); 
	});
	userPassword.click(function(){
		userPassword.change_origin();
	});
	
	//회원정보 수정기능
	$('#mypageLoginBtn').click(function(){
		var objForm = get_form_data($('#mypage-user-update-form'));
		var userPassword = $('input[name=userPassword]');
		var userPasswordChk = $('input[name=userPasswordChk');
		var target = $('#usercheck-place');
		if(userPassword.val().length < 1 || userPasswordChk.val().length < 1){
			target.text('비밀번호를 입력해주세요.');
			userPassword.focus();
			return;
		}
		if(userPassword.val().length < 4){
			target.text('비밀번호를 4글자 이상 입력해주세요');
			userPassword.focus();
			return;
		}
		if(userPassword.val() !== userPasswordChk.val()){
			target.text('비밀번호를 확인해주세요.');
			userPassword.focus();
			return;
		}
		var jsonData = JSON.stringify(objForm);
		$.ajax({
			type:"POST",
			dataType:"json",
			url:"../userUpdateAction",
			data:{jsonData:jsonData},
			success:function(data){
				alert('회원정보가 수정되었습니다. 로그인을 다시 해주세요');
				location.href='userLogoutAction';
			}
		});
		
	});
	//로그인 확인 기능
	$('#userLoginBtn').login_check($('#userLoginForm'),"/userLoginAction");
	//로그아웃 확인 기능  
	$('#userLogout').click(function(){
		$.ajax({
			type:"POST",
			url:"userLogoutAction",
			success:function(result){
				alert('로그아웃 되었습니다.');
				location.href=result;
			}
		});
	}); 
});
//회원가입 확인 기능
$(document).ready(function(){
	let str = "";
	let id = $('#join-user-id');
	let pw = $('#join-user-pw');
	let pw2 = $('#join-user-pw-check');
	let name = $('#join-user-name');
	let email = $('#join-user-email');
	let gender = $('input:radio[name="userGender"]');
	let agree = $('input:radio[name="userAgree"]');

	let pwEaquls = false;
	let idDupplicate = false;
	let idCheck = false;
	let pwCheck = false;
	let nameCheck = false;
	let emailCheck = false;
	let genderCheck = false;
	let agreeCheck = false;

	let pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;
	let pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	let pattern_num = /[0-9]/;

//	아이디 확인 클릭시 이벤트
	$('#user-duplicate-check-btn').click(function(){

		let idTarget = $("#id_check");

		if(id.val().length < 1){
			id.change_placeholder('아이디를 입력해주세요');
			return;
		}
		if(id.val().length < 4){
			idTarget.text("4글자 이상 입력해주세요");
			return;
		}
		if(pattern_spc.test(id.val()) || pattern_kor.test(id.val())){
			idTarget.text("특수문자나 한글은 입력할수 없습니다.");
			return;
		}

		var userId = $('#join-user-id').val();
		var obj = new Object();
		obj.id = userId;

		var jsonId = JSON.stringify(obj);
		$.ajax({
			type:"POST",
			dataType:"json",
			url:'../userJoinConfirm',
			data:{jsonId:jsonId},
			success:function(result){
				if(result.isSuccess === 1){
					idTarget.text("사용가능한 아이디 입니다.");
					idDupplicate = true;
					idCheck = true;

				} else if (result.isSuccess === -1){
					idTarget.text("중복된 아이디 입니다.");
				} 
			}
		});	

	});
//	비밀번호 버튼 클릭시 이벤트
	$('#join-user-pw-check-btn').click(function(){

		let pwTarget=$('#pw_check');

		if(pw.val().length < 1){
			pw.change_placeholder(pw,'비밀번호를 입력하세요');
			return;
		}
		if(pw2.val().length < 1){
			pw.change_placeholder(pw2,'비밀번호를 입력해주세요');
			return;
		}
		if(pw.val().length < 4){
			pwTarget.text("비밀번호는 4글자 이상이어야 합니다.");
			return;
		}
		if(pw.val() !== pw2.val()){
			pwTarget.text("비밀번호가 일치하지 않습니다.");
			return;
		}
		if(pw.val() === pw2.val()){
			pwTarget.text("비밀번호가 일치합니다.");
			pwCheck = true;
			return;
		}

	});  
//	회원가입 폼 전송시 이벤트
	$('#join-on-btn').click(function(){


		let nameTarget = $('#name_check');
		if(email.val() > 0){
			emailCheck = true;
		}
		if(name.val().length > 0){
			nameCheck = true;
		}
		if($("input:radio[name=userGender]").is(":checked")){
			genderCheck = true;
		}
		if($("input:checkbox[name=userAgree]").is(":checked")){
			agreeCheck = true;
		}	
		if(email.val().length > 1){
			emailCheck = true;
		}
		if(idDupplicate === false){
			$('#submit_check').text("아이디 중복확인을 해주세요");
			id.focus();
			return;
		}
		if(idCheck  === false){
			$('#submit_check').text("아이디를 확인 해주세요");
			id.focus();
			return;
		}
		if(pwCheck  === false){
			$('#submit_check').text("비밀번호를 확인 해주세요");
			pw.focus();
			return;
		}
		if(nameCheck === false){
			$('#submit_check').text("이름을 확인해주세요");
			name.focus();

			return;
		}
		if(emailCheck === false){
			$('#submit_check').text("메일을 확인해주세요");
			email.focus();

			return;
		}
		if(genderCheck === false){
			$('#submit_check').text("성별란을 확인하세요");
			gender.focus();
			return;
		}
		if(agreeCheck === false){
			$('#submit_check').text("개인정보 제공 동의란을 체크해주세요");
			agree.focus();
			return;
		}
		var $form = $('#join_form');
		var data = get_form_data($form);
		var jsonData = JSON.stringify(data);

		$.ajax({
			type:'POST',
			dataType:'json',
			url:'../userJoinRun',
			data: {jsonData:jsonData},
			success: function(result){
				if(result.isSuccess === 1){
					alert('회원가입이 완료되었습니다.');
					location.href='../home.jsp';
				} else {
					alert('실패하였습니다.');
				}
			},
			error: function(){
				alert('죄송합니다. 관리자에게 문의해주세요');
			}
		});
	});
});

//로그인, 유저 체크 함수
$.fn.login_check = function(form,customUrl){
	this.click(function(){
		let objArray = get_form_data(form);
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
		let jsonData = JSON.stringify(objArray);
		$.ajax({
			cache:false,
			type:"POST",
			dataType:"json",
			async:false,
			url: customUrl,
			data:{jsonData:jsonData},
			success:function(result){
				if(result.isSuccess === 1){
					
					history.go(0);
					return;
				}
				if(result.isSuccess === -1){
					alert('아이디와 비밀번호가 다릅니다.');
					return;
				}  
			},
			error:function(e){
				alert('오류입니다. 관리자에게 문의해주세요');
			}
		});
	});
};

//input box 원래대로 되돌리는 함수
$.fn.change_origin = function(){
	this.css({'border-color':'#ced4da','background-color':'#fff'});
	return this;
}
//input box placeholder 값 변경함수 해당 dom에 포커스
$.fn.change_placeholder = function(placeholder){
	this.css({'border-color':'#FF5675'}).attr('placeholder',placeholder);
	this.focus();
}

//form에 해당하는 값 입력시 해당값 object배열로 변환
function get_form_data($form){
	let unindexed_array = $form.serializeArray();
	let indexed_array = {};
	$.map(unindexed_array, function(n, i){
		indexed_array[n['name']] = n['value'];
	});
	return indexed_array;
}

