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

	<div class="container">
		<div class="row">
			<table class="table">
				<tr>
					<td style="width: 20%"> 작성자 : 홍길동 </td>
					<td> 작성일 : </td>
					<td> 조회수 : </td>
				</tr>
				<tr>
					<td> 제목 </td>
					<td colspan="2"> 안녕하세요 </td>
				</tr>
				<tr>
					<td style="height: 300px;"> 내용 </td>
					<td colspan="2"> 자바에서 자식 클래스는 부모 클래스의 private 멤버를 제외한 모든 메소드를 상속받습니다.
									이렇게 상속받은 메소드는 그대로 사용해도 되고, 필요한 동작을 위해 재정의하여 사용할 수도 있습니다.
									즉, 메소드 오버라이딩이란 상속받은 부모 클래스의 메소드를 재정의하여 사용하는 것을 의미합니다. </td>
				</tr>
			</table>
			<br><br>
			<button> 수정 </button>
		</div>
	</div>

<%@ include file="../footer.jsp" %>
</body>
</html>