/*
 */

function boardwrite(){
	alert("글을 작성합니다.");
	
	var b_title = document.getElementById("title").value;
		alert(b_title);
	var b_contents = document.getElementById("contents").value;
		alert(b_contents);
	
	$.ajax({
		url : "../../controller/boardwirtecontroller.jsp",
		data : {title:b_title, contents:b_contents},
		success : function(result) {
			alert(result);
		}
	});
}