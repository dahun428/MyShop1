//login check function
$(document).ready(function(){
	$('#userId').click(function(){
		$('#userId').css({'border-color':'#ced4da','background-color':'#fff'});
	});
	$('#userPassword').click(function(){
		$('#userPassword').css({'border-color':'#ced4da','background-color':'#fff'});
	});
	$('#userLoginBtn').click(function(){		

		var loginForm = $('#userLoginForm');
		var userId = $('#userId').val();
		var userPassword = $('#userPassword').val();

		var obj = new Object();
		obj.id = userId;
		obj.pw = userPassword;
		if(obj.id.length == 0){
			$("#userId").css({'border-color':'#FF5675'})
			.attr('placeholder','아이디를 입력해주세요').focus();
			return;
		}
		if(obj.pw.length == 0){
			$("input[name=userPassword]").css({'border-color':'#FF5675'}).attr('placeholder','비밀번호를 입력해주세요');
			$('#userPassword').focus();
			return;
		}
		var jsonData = JSON.stringify(obj);
		$.ajax({
			cache:false,
			type:"POST",
			dataType:"json",
			url:'userLoginAction',
			data:{json:jsonData},
			success:function(result){
				if(result.isSuccess === 1){
					alert(userId+'님 반갑습니다.');
					history.go(0);

				} else if (result.isSuccess === -1){
					alert('로그인이 실패하였습니다. 아이디와 비밀번호를 확인해주세요'+result);
				} else {
					alert('오류입니다. 관리자에게 문의해주세요'+result);
				}
			}

		});
	});
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
//JoinPage



//join check function
$(document).ready(function(){
	let str = "";
	let id = $('#join-user-id');
	let pw = $('#join-user-pw');
	let pw2 = $('#join-user-pw-check');
	let name = $('#join-user-name');
	let email = $('#join-user-email');
	let gender = $('input:radio[name="join-user-gender"]');
	let agree = $('input:radio[name="join-user-agree"]');

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

		var idTarget = $("#id_check");

		if(id.val().length < 1){
			$.fn.valueChange(id,'아이디를 입력해주세요');
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
			url:'../userJoinAction',
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

		var pwTarget=$('#pw_check');

		if(pw.val().length < 1){
			$.fn.valueChange(pw,'비밀번호를 입력하세요');
			return;
		}
		if(pw2.val().length < 1){
			$.fn.valueChange(pw2,'비밀번호를 입력해주세요');
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

	$('#join-on-btn').click(function(){


		var nameTarget = $('#name_check');
		if(email.val() > 0){
			emailCheck = true;
		}
		if(name.val().length > 0){
			nameCheck = true;
		}
		if($("input:radio[name=join-user-gender]").is(":checked")){
			genderCheck = true;
		}
		if($("input:checkbox[name=join-user-agree]").is(":checked")){
			agreeCheck = true;
		}	
		if(email.val().length > 1){
			emailCheck = true;
		}
		if(!idDupplicate){
			$('#submit_check').text("아이디 중복확인을 해주세요");
			id.focus();
			return;
		}
		if(!idCheck){
			$('#submit_check').text("아이디를 확인 해주세요");
			id.focus();
			return;
		}
		if(!pwCheck){
			$('#submit_check').text("비밀번호를 확인 해주세요");
			pw.focus();
			return;
		}
		if(!nameCheck){
			$('#submit_check').text("이름을 확인해주세요");
			name.focus();
			
			return;
		}
		if(!emailCheck){
			$('#submit_check').text("메일을 확인해주세요");
			email.focus();
			
			return;
		}
		if(!genderCheck){
			$('#submit_check').text("성별란을 확인하세요");
			gender.focus();
			return;
		}
		if(!agreeCheck){
			$('#submit_check').text("개인정보 제공 동의란을 체크해주세요");
			agree.focus();
			return;
		}

		if(pwEaquls && idDupplicate && idCheck && pwCheck && nameCheck && emailCheck && genderCheck && agreeCheck){
			
			var formData = $("form[name=join_form]").serialize();
			
			$.ajax({
				type:'POST',
				url:'userJoinAction2',
				data: formData,
				success: function(){
					
				},
				error: function(){
					
				}
			});
			
		}

	});


//	사용자 함수
//	input box 바꾸기
	$.fn.valueChange = function(value, str){
		value.css({'border-color':'#FF5675'}).attr('placeholder',str);
		value.focus();
	}
//	input box 되돌리기
	$.fn.valueChangeBack = function(){
		this.css({'border-color':'#ced4da','background-color':'#fff'});
	}
	$.fn.inputValueChange = function(str){
		this.css({'border-color':'#FF5675'}).attr('placeholder',str);
		this.focus();
	}

});	

