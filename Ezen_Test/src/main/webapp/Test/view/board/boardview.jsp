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
<br><br>
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
					<td colspan="2"> 닌텐도 소개글 </td>
				</tr>
				<tr>
					<td style="height: 300px;"> 내용 </td>
					<td colspan="2"> 닌텐도 주식회사는 일본의 교토시에 본사를 둔 가전제품·비디오 게임 회사이다.
									닌텐도는 마리오 시리즈, 젤다의 전설, 포켓몬스터, 동물의 숲, 스플래툰과 같은 널리 알려진 프랜차이즈 게임을 생산했고,
									전 세계의 비디오 게임 전문 회사 가운데 시가총액이 가장 큰 기업이다.</td>
				</tr>
			</table>
			<br><br>
			<button> 수정 </button>
		</div>
	</div>
</body>
</html>