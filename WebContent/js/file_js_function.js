/*
 * file_function
 */
$(document).ready(function(){
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
		$("#input-btn").on('click','label', function(){
			var userfileName = $('#userfile').val();
			$.ajax({
				type:'POST',
				url:'fileDeleteAction',
				data:{userfileName:userfileName},
				success:function(result){
					userfileName=result;
				},
				error:function(e){

				}
			});
		});
	}
});	