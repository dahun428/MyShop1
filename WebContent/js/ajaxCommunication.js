$(document).ready(function(){
	$('#bbs-file-set').click(function(){
		alert();
	});
	
});
function bbsFileDeleteGet(){
	var ctx = "<%=request.getContextPath()%>";
	var getUrl = "/fileDeleteAction?file=<%=bbsFileName %>";
	var url = ctx + getUrl;
	
	$.ajax({
		type: "GET",
		url: url,
		datatype:"html",
		data: isSuccess,
		success: function(isSuccess){
			alert(isSuccess);
		},
		error:function(e){
			alert("error");
		}
		
	});
}	
function alert(){
	alert('on');
}
$()
	
	

onclick="location.href='${url }/fileDeleteAction?file=${bbsFileName }'"