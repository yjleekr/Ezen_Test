<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../header.jsp" %>

<%
	if(session.getAttribute("loginid")!=null){
		out.print("<script>alert('로그인이 되어 있습니다.'); </script>");
		out.println("<script>location.href='../main.jsp';</script>");
	}
%>

<div class="container">
    <div class="input-form-backgroud row">
      <div class="input-form col-md-12 mx-auto">
        <h4 class="mb-3">회원가입</h4>
        <form class="validation-form" action="/Ezen_Test/Test/controller/signupcontroller.jsp" method="post" onsubmit="return signupcheck();" enctype="application/x-www-form-urlencoded">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">아이디</label>
              <input type="text" class="form-control" id="id" name="id" onchange="signupcheck();">
            </div>
             <div>
				<span id="idresult"></span>
    		</div>
            <div class="col-md-6 mb-3">
              <label for="password">비밀번호</label>
              <input type="password" class="form-control" id="password" name="password" onchange="signupcheck();">
            </div>
          </div>
          <div>
          	<span id="pwresult"></span>
          </div>

          <div class="mb-3">
            <label for="email">이메일</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="you@example.com">
          </div>

          <div class="mb-3">
            <label for="address">주소</label>
          <div class="row">
			<div class="col-md-6"> <input type="text" name="address1" id="sample4_postcode" placeholder="우편번호" class="form-control"> </div>
			<div class="col-md-6"> <input type="button" onclick="sample4_execDaumPostcode();" value="우편번호 찾기" class="form-control"><br></div>
		</div>
          </div>

          <div class="mb-3">
            <div class="row">
				<div class="col-md-6"> <input type="text" name="address2" id="sample4_roadAddress" placeholder="도로명주소" class="form-control"> </div>
				<div class="col-md-6"> <input type="text" name="address3" id="sample4_jibunAddress" placeholder="지번주소" class="form-control"> </div>
			</div>
			<input type="text" id="sample4_detailAddress" name="address4" placeholder="상세주소" class="form-control">
          </div>

          <div class="row">
            <div class="col-md-8 mb-3">
              <label for="root">연락처</label></div>
              <div class="col-md-6">
              <input id="phone" onchange="singupcheck();" type="text" name="phone" class="form-control" placeholder="010-000-0000">
          </div>
            <div class="col-md-4 mb-4">
              <label for="code">이름</label>
              <input type="text" name="name" class="form-control" id="code">
            </div>
          </div>
          <div class="mb-4"></div>
          <input type="submit" class="btn btn-primary btn-lg btn-block" value="가입 완료">
        </form>
      </div>
    </div>
  
    <footer class="my-3 text-center text-small">
      <p class="mb-1">&copy; 2021.</p>
    </footer>
  </div>
</body>
</body>
</html>