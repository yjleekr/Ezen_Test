/*
 */
function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
/* 다음주소 api end */

// 회원가입
/*function singup(){
	var id = document.getElementById("id").value;
	var password = document.getElementById("password").value;
	var email = document.getElementById("email").value;
	var address = document.getElementById("address");
	var phone = document.getElementById("phone").value;
	var name = document.getElementById("name").value;
	
	$.ajax({
		url:"/Ezen_Test/Test/controller/signupcontroller.jsp",
		data:{id:id, password:password, email:email, address:address, phone:phone, name:name},
		success: function(result){
			if(result==1){
			location.href="../view/member/login.jsp";
			} else {
				alert("회원가입 실패");
				location.href="../view/member/login.jsp";
				}	
		}
	});
}*/

// 로그인
/*function login(){
	
	alert("로그인 0");
	var id = document.getElementById("m_id").value;
	var password = document.getElementById("m_password").value;
	
	$.ajax({
		url:"/Ezen_Test/Test/controller/logincontroller.jsp",
		data:{id:id, password:password},
		success : function(result){
			if(result==1) {
				alert("로그인 1");
				location.href="/Ezen_Test/Test/view/main.jsp";
			} else {
				alert("로그인 2");
				location.href="/Ezen_Test/Test/view/member/login.jsp";
			}
		}
	});
}*/

// 아이디 확인
function singupcheck(){
	var id=document.getElementById("id").value;
	var password=document.getElementById("password").value;
	
	var idj=/^[a-z0-9]{5,10}$/; // 아이디 정규 표현식
	var pwj=/^[A-Za-z0-9]{5,10}$/; // 비밀번호 정수 표시
	
	if(!idj.test(id)){
		document.getElementById("idresult").innerHTML="아이디는 소문자의 숫자 조합 5~15사이만 가능합니다.";
		document.getElementById("idresult").style.color="red";
		return false; // form submit 불가
	} else {
		document.getElementById("idresult").innerHTML="사용가능한 아이디 입니다.";
		document.getElementById("idresult").style.color="green";
		}
	if(!pwj.test(password)){
		document.getElementById("pwresult").innerHTML="비밀번호는 소문자의 숫자 조합 5~15사이만 가능합니다.";
		document.getElementById("pwresult").style.color="red";
		return false; // form submit 불가
	} else {
		document.getElementById("pwresult").innerHTML="사용가능한 비밀번호 입니다.";
		document.getElementById("pwresult").style.color="green";
		}
		
		
}

// 글 등록
function boardwrite(){
	alert("글을 작성합니다.");
	
	var b_title = document.getElementById("title").value;
	var b_contents = document.getElementById("contents").value;
	
	$.ajax({
		url : "../../controller/boardwirtecontroller.jsp",
		data : {title:b_title, contents:b_contents},
		success : function(result) {
			
		}
	});
}