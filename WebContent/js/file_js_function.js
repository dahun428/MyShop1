//file_name_change_function
$(document).ready(function(){
	$("#bbs-file-set").on('change', function(){
		if(window.FileReader){
			var fileName = $(this)[0].files[0].name;
		} else {
			var fileName = $(this).val().split('/').pop().split('\\').pop();
		}
		$("label[for=bbs-file-set]").text(fileName);

	});
});	
