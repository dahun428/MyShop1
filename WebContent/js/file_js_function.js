/*
 * file_function
 */


$(document).ready(function(){
	
	$('#fileUpload-btn').click(function(){
		$('#fileUpload-form').submit();
	});
	
	$("#bbs-file-set").on('change', function(){
		var fileName;
		if(window.FileReader){
			fileName = $(this)[0].files[0].name;
		} else {
			fileName = $(this).val().split('/').pop().split('\\').pop();
		}
		$("#userfile").val(fileName);
	});
	
	if($('#existFile').length > 0){
		var userfileName = $('#user-file-real-name').val();
		
		$('#user-file-upload-btn').attr('disabled',true);
		
		$('#user-file-delete-btn').on('click', function(){
			$('a').remove("#existFile");
			$('#user-file-upload-btn').attr('disabled',false);
			$.ajax({
				type:'POST',
				url:'fileDeleteAction',
				data:{userfileName:userfileName},
				success:function(result){
					console.log(result);
					
					if(result == -2){
						$('#user-file-delete-btn').remove();
						$('#userfile').val('');
					}
					
				},
				error:function(e){

				}
			});
		});
	}
});	
//input 창에 파일 이름 바꿔주는 기능
$.fn.get_file_name = function($target){
	this.on('change',function(){
		let fileName;
		if(window.FileReader){
			fileName = $(this)[0].files[0].name;
		} else {
			fileName = $(this).val().split('/').pop().split('\\').pop();
		}
		target.val(fileName);
		
	});
}


function get_form_data($form){
	let unindexed_array = $form.serializeArray();
	let indexed_array = {};
	$.map(unindexed_array, function(n, i){
		indexed_array[n['name']] = n['value'];
	});
	return indexed_array;
}