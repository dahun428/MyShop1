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
		if(!$('input[name=category]').val()){
			target.text('카테고리를 입력해주세요');
			$('input[name=category]').focus();
			return;
		}
	});
	$('input:radio[name="categoryRadio"]').change(function(){
		
		alert('1');
		//var categoryInputRadio = $('input:radio[id="category-input-radio"]');
		//var categorySelectBox = $('#category-selectBox');
		//var categoryInputBox = $('#category-inputBox');

		//if(categoryInputRadio.is(':checked')){
		//	categoryInputBox.attr('disabled',false);
		//	categorySelectBox.attr('disabled',true);			
		//} else {
		//	categoryInputBox.attr('disabled',true);
		//	categorySelectBox.attr('disabled',false);	
		//}
	
	});

});


