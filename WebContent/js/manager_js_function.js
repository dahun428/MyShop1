$(document).ready(function(){
	
	var discountSelectVal = $('input:radio[name="discountSelect"]:checked').val();
	var disocuntSelectPriceBox = $('#discountPrice-price-select');
	var discountSelectRateBox = $('#discountPrice-rate-select');
	var discountInputBox = $('#discountPrice-price-select');
	var discountSelectBox = $('#discountPrice-rate-select');
	var pointRate = 0.005;
	
	//가격 입력시 할인 적용박스 change
	$('input[name=price]').on('change', function(){
		
		var target = $('input[name=discountPrice]');
		target.val($('input[name=price]').val());	
		$('input[name=point]').val($('input[name=price]').val() * pointRate);
		
		
	});
	//할인가 입력 선택 라디오
	$('input:radio[name="discountSelect"]').change(function(){
		if($('input:radio[id="discountSelect-price"]').is(':checked')){
			disocuntSelectPriceBox.attr('disabled',false);
			discountSelectRateBox.attr('disabled',true);
		} else {
			disocuntSelectPriceBox.attr('disabled',true);
			discountSelectRateBox.attr('disabled',false);
		}
		
	});
	//할인가격 박스 입력시 할인 적용박스 change
	$(discountInputBox).keyup(function(){
		var target = $('input[name=discountPrice]');
		var totalPrice = $('input[name=price]').val() - discountInputBox.val(); 
		target.val(totalPrice);
		
		
	});
	//셀렉트 박스 입력시 할인 적용 박스 change
	$(discountSelectBox).on('change', function(){
		
		if($('#discountPrice-rate-select').val()){
			discountInputBox.val("");
			var target = $('input[name=discountPrice]');
			var totalPrice = $('input[name=price]').val() * (1- $('#discountPrice-rate-select').val());  
			target.val(totalPrice);
		}
		
	});
	//input 값 체크 function
	$('#product-submit-btn').click(function(){
		
		var target = $('#inputCheck');
		
		if(!$('input[name=productName]').val()){
			target.text('상품 이름을 입력해주세요');
			$('input[name=productName]').focus();
			return;
		}
		if(!$('input[name="brand"]').val()){
			target.text('브랜드를 입력해주세요');
			$('input[name="brand"]').focus();
			return;
		}
		if($('input[id=category-inputBox]').val().length < 1 && $('#category-selectBox option:selected').val().length < 1){
			target.text('카테고리를 입력해주세요');
			$('input[name=category]').focus();
			return;			
		}
		if(!$('input[name=maker]').val()){
			target.text('제조사를 입력해주세요');
			$('input[name="maker"]').focus();
			return;
		}
		if(!$('input[name="price"]').val()){
			target.text('가격을 입력해주세요');
			$('input[name="price"]').focus();
			return;
		}
		var confirmed = confirm('이대로 등록하시겠습니까?');
		if(confirmed){
			$('#product-add-form').submit();
		}
	});
	//카테고리 입력 선택 라디오
	$('input:radio[name="categoryRadio"]').on('change',function(){
		var categoryInputRadio = $('input:radio[id="category-input-radio"]');
		var categorySelectBox = $('#category-selectBox');
		var categoryInputBox = $('#category-inputBox');

		if(categoryInputRadio.is(':checked')){
			categoryInputBox.attr({disabled : false , name : "category"});
			categorySelectBox.attr('disabled',true).val("");			
		} else {
			categoryInputBox.attr({disabled : true , name : "categoryInput"}).val("");
			categorySelectBox.attr({disabled : false , name : "category"});
		}
	
	});

});


