function product(){
	var no = document.getElementById("productform").no.value;
	var ready=document.getElementById("productform").ready.value;
	var print=document.getElementById("productform").print.value;
	var coating=document.getElementById("productform").coating.value;s
	var paper=document.getElementById("productform").paper.value;
	var join=document.getElementById("productform").join.value;
	var packaging=document.getElementById("productform").packaging.value;
	var fwork=document.getElementById("productform").fwork.value;
	var ftime=document.getElementById("productform").ftime.value;
	
	if(pfwork==""){
		alert("최종작업일자가 입력되지 않았습니다.")
		document.getElementById("productform").ppfwork.focus();
	} else if(pftime==""){
		alert("최종작업시간이 입력되지 않았습니다.")
		document.getElementById("productform").pftime.focus();
	}
}