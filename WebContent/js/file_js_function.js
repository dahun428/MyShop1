/*
 * file_function
 */

//파일 다운로드 함수
$(document).ready(function(){
	let fileName;
	let fileRealName;
		
		$('#user-file-upload-btn').on('click',function(){
			
			if($('#user-file-upload-btn').val() === 'exist-file'){ 
			
		 	 $("#file-upload-preview").text("");
			 $('#userfile').val("파일을 첨부해주세요");
			 $('#user-file-upload-btn').attr('class','btn btn-primary')
			  						   .text('파일업로드')
			  						   .val('upload');
			 let userfileName = 
			 $.ajax({
					type:'POST',
					url:'../fileDeleteAction',
					data:{userfileName:fileRealName},
					success:function(result){
						console.log(result);
						
					},
					error:function(e){
						
					}
				});
			}
		});
	
	$('#fileUpload-btn').click(function(){
		
		
		var form = $('#fileUpload-form')[0];
		var formData = new FormData(form);
		$.ajax({
			type:"POST",
			 enctype: 'multipart/form-data',
			 url:'../fileUploadAction',
			 data:formData,
			 processData: false,
			 contentType:false,
			 cache:false,
			 timeout:600000,
			 success: function (data) {
				 
				 console.log("SUCCESS : ", data);
				 	console.log(data);
				 	console.log(data.fileNo);
				 	console.log(data.bbsFileName);
				 	let fileNo = data.fileNo;
		            fileName = data.bbsFileName;
		            console.log("fileName", fileName);
		            fileRealName = data.bbsFileRealName;
		            console.log("fileRealName", fileRealName);
		            let tag = '<span><a id="existFile" href="../downloadAction?file='+fileRealName+'">'+fileName+'</a></span>'
		            $('#file-upload-preview').append(tag);
		            $('#staticBackdrop').modal("hide");
		            $('#user-file-upload-btn').attr('class','btn btn-dark')
		            						  .text('파일삭제')
		            						  .val('exist-file');
		            						 
			 },
		        error: function (e) {
		            console.log("ERROR : ", e);
		        }
		});
		
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