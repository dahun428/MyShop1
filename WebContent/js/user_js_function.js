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


//join check function
$(document).ready(function(){
	let str = "";
	let id = $('#jon-user-id');
	let pw = $('#join-user-pw');
	let pw2 = $('join-user-pw-check');
	let name = $('join-user-name');
	let email = $('join-user-email');
	let gender = $('input:radio[name="join-user-gender"]');
	let agree = $('input:radio[name="join-user-agree"]');
	
	let idDupplicate = false;
	let idCheck = false;
	let pwCheck = false;
	let nameCheck = false;
	let emailCheck = false;
	let genderCheck = false;
	let agreeCheck = false;
	
	id.click(function(){
		$.fn.valueChangeBack();
	});
	pw.click(function(){
		$.fn.valueChangeBack();
	});
	name.click(function(){
		$.fn.valueChangeBack();
	});
	email.click(function(){
		$.fn.valueChangeBack();
	});
	
//아이디 중복확인 클릭시 이벤트	
	$('#user-duplicate-check').click(function(){
		var userId = $('#join-user-id').val();
		var obj = new Object();
		obj.id = userId;
		
		var jsonId = JSON.stringify(obj);
		console.log(userId);
		var formAppend = $('#join-user-id-div');
		
		if(userId.length === 0){
			return;
		}
		
		$.ajax({
			type:"POST",
			dataType:"json",
			url:'../userJoinAction',
			data:{jsonId:jsonId},
			success:function(result){
				console.log(result.isSuccess);
				if(result.isSuccess === 1){
					console.log(result);
					formAppend
					.append("<div style='text-align:left' class='join-userId-check'><small>사용가능한 아이디입니다.</small></div>");
					idDupplicate = true;
				} else if (result.isSuccess === -1){
					console.log(result);
					console.log(result.isSuccess);
					formAppend
					.append("<div style='text-align:left' class='join-userId-check'><small>중복된 아이디입니다.</small></div>");
				} else if(userId){
					
				}
			}
		});
	});	
	$('#user-duplicate-check').click(function(){
		if(('.join-userId-check').length > 0){		
			$('.join-userId-check').empty();
		}
	});

//회원가입 버튼 클릭시 이벤트	
	$('#join-on-btn').click(function(){
		if($('.join-userId-check').length < 1){
			$.fn.valueChange("아이디 중복을 확인해주세요");
			return;
		}
		if(!isDupplicate){
			$.fn.valueChange("아이디를 확인해주세요");
			return;
		}
		if(!pwCheck){
			$.fn.valueChange("비밀번호를 확인해주세요");
			return;
		}
		if(!nameCheck){
			$.fn.valueChange("이름을 확인해주세요");
			return;
		}
		if(!emailCheck){
			$.fn.valueChange("이메일을 확인해주세요");
			return;
		}
		if(!genderCheck){
			alert('성별을 입력해주세요');
			return;
		}
		if(!agreeCheck){
			alert('개인정보 처리 방침에 동의해주세요');
			return;
		}
		
		document.join_form.submit();
	});

//input 텍스트 실시간 감시 이벤트
	id.on("propertychange change keyup paste input", function(){
		
		let pattern_spc = /[~!@#$%^&*()_+|<>?:{}]/;
		let pattern_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
		let pattern_num = /[0-9]/;
		var idVal = id.val();
		var pwVal = pw.val();
		var pw2Val = pw2.val();
		var nameVal = name.val();
		var emailVal = email.val();
		
		if(idVal.length === 0){
			$.fn.valueChange("아이디를 입력해주세요");
		} else if(idVal.length < 3){
			$.fn.valueChange("아이디는 3글자 이상이어야 합니다.");
		} else if(pattern_spc.test(idVal) || pattern_kor.test(idVal)){
			$.fn.valueChange("아이디는 특수문자, 한글을 포함할 수 없습니다.");
		} else {
			idCheck = true;
		}
		if(pwVal.length === 0){
			$.fn.valueChange("비밀번호를 입력해주세요");
		} else if (pwVal.length < 4){
			$.fn.valueChange("비밀번호는 4글자 이상이어야 합니다.");
		} else if (pwVal !== pw2Val){
			$.fn.valueChange("비밀번호가 일치하지 않습니다.");
		} else {
			pwCheck = true;
		}
		
		if(nameVal.length === 0){
			$.fn.valueChange("이름을 입력해주세요.");
		} else if (pattern_spc.test(nameVal) || pattern_num.test(nameVal)){
			$.fn.valueChange("이름에는 특수문자나 숫자가 포함될 수 없습니다.");
		} else {
			nameCheck = true;
		}
		if(emailVal.length === 0){
			$.fn.valueChange("이메일을 입력해주세요");
		} else {
			emailCheck = true;
		}
		if(gender.is(':checked')){
			genderCheck = true;
		}
		if(agree.is(':checked')){
			agreeCheck = true;
		}
		
	});
	
//사용자 함수
	//input box 바꾸기
	$.fn.valueChange = function(str){
		this.css({'border-color':'#FF5675'}).attr('placeholder',str);
		this.focus();
	}
	//input box 되돌리기
	$.fn.valueChangeBack = function(){
		this.css({'border-color':'#ced4da','background-color':'#fff'});
	}
	$.fn.inputValueChange = function(str){
		this.css({'border-color':'#FF5675'}).attr('placeholder',str);
		this.focus();
	}
	
	
	
});	