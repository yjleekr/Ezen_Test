function product(){
	var pno = document.getElementById("productform").pno.value;
	var pfwork=document.getElementById("productform").fwork.value;
	var pftime=document.getElementById("productform").ftime.value;
	
// 라디오 체크 유효성 검사
	// 재료준비
	var ready = document.getElementsByName('ready'); // 배열로 동일한 라디오 2개 가져오기
	var check = false; // 체크여부 확인
	for(var i=0; i<ready.length; i++) {
		if(ready[i].checked) {
			check=true;
		}
	}
	if(check==false) {alert("재료준비 체크 해주세요"); return false;}
	
	// 인쇄 공정
	var print = document.getElementsByName('print');
	var check = false;
	for(var i=0; i<ready.length; i++) {
		if(print[i].checked) {
			check=true;
		}
	}
	if(check==false) {alert("인쇄 공정 체크 해주세요"); return false;}
	
	// 코팅 공정
	var coating = document.getElementsByName('coating');
	var check = false;
	for(var i=0; i<coating.length; i++) {
		if(coating[i].checked) {
			check=true;
		}
	}
	if(check==false) {alert("코팅 공정 체크 해주세요"); return false;}
	
	// 합지 공정
	var paper = document.getElementsByName('paper');
	var check = false;
	for(var i=0; i<paper.length; i++) {
		if(paper[i].checked) {
			check=true;
		}
	}
	if(check==false) {alert("합지 공정 체크 해주세요"); return false;}
	
	// 접합 공정
	var join = document.getElementsByName('join');
	var check = false;
	for(var i=0; i<join.length; i++) {
		if(join[i].checked) {
			check=true;
		}
	}
	if(check==false) {alert("접합 공정 체크 해주세요"); return false;}
	
	// 포장 공정
	var packaging = document.getElementsByName('packaging');
	var check = false;
	for(var i=0; i<packaging.length; i++) {
		if(packaging[i].checked) {
			check=true;
		}
	}
	if(check==false) {alert("포장 공정 체크 해주세요"); return false;}

// 최종작업일자, 최종작업시간 유효성 검사
	if(pfwork=="") {
		alert("최종 작업 일자를 입력해주세요");
		document.getElementById("productform").pfwork.focurs();
		return false; // 폼 전송 막아주는 역할
	} if(pftime=="") {
		alert("최종 작업 시간를 입력해주세요.");
		document.getElementById("productform").pftime.focurs();
		return false;
	}
}