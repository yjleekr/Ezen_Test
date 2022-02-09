<%@page import="Dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
h3{text-align: center;}
table{
width: 50%; margin: auto;
}
tr, td{
text-align: center;

}
#tdid{font-weight: bold;}
</style>
</head>
<body>
<%@include file="../header.jsp" %>
<%@include file="../nav.jsp" %>
<script src="../Js/product.js"></script>

<%
	int lastno = ProductDao.getProductDao().lastno()+1;
%>

<div class="container">
		<div class="row">
			<h3>작업공정등록</h3>
		</div>
		<div>
			<form id="productform" action="../Controller/PwriteController.jsp" method="post">
				<table>
					<tr>
						<td id="tdid">작업지시번호</td>
						<td><input type="text" id="pno" name="no" value="<%=lastno %>"> 예)20190001</td>
					</tr>
					
					<tr>
						<td id="tdid">재료준비</td>
						<td>
							<input type="radio" id="pready" name="ready" value="완료">완료
							<input type="radio" id="pready" name="ready" value="작업중">작업중
						</td>
					</tr>
					
					<tr>
						<td id="tdid">인쇄공정</td>
						<td>
							<input type="radio" id="pprint" name="print" value="완료">완료
							<input type="radio" id="pprint" name="print" value="작업중">작업중
						</td>
					</tr>
					
					<tr>
						<td id="tdid">코팅공정</td>
						<td>
							<input type="radio" id="pcoating" name="coating" value="완료">완료
							<input type="radio" id="pcoating" name="coating" value="작업중">작업중
						</td>
					</tr>
					
					<tr>
						<td id="tdid">합지공정</td>
						<td>
							<input type="radio" id="ppaper" name="paper" value="완료">완료
							<input type="radio" id="ppaper" name="paper" value="작업중">작업중
						</td>
					</tr>
					
					<tr>
						<td id="tdid">접합공정</td>
						<td>
							<input type="radio" id="pjoin" name="join" value="완료">완료
							<input type="radio" id="pjoin" name="join" value="작업중">작업중
						</td>
					</tr>
					
					<tr>
						<td id="tdid">포장공정</td>
						<td>
							<input type="radio" id="ppackaging" name="packaging" value="완료">완료
							<input type="radio" id="ppackaging" name="packaging" value="작업중">작업중
						</td>
					</tr>
					
					<tr>
						<td id="tdid">최종작업일자</td>
						<td><input type="text" id="pfwork" name="fwork"> 예)20190101</td>
					</tr>
					
					<tr>
						<td id="tdid">최종작업시간</td>
						<td><input type="text" id="pftime" name="ftime"> 예)1300</td>
					</tr>
					
					<tr>
						<td><input type="submit" value="공정등록" onclick="product();"></td>
						<td><input type="submit" value="공정수정"></td>
						<td><input type="submit" value="다시쓰기"></td>
					</tr>
						
				</table>
			</form>
		</div>
	</div>
<%@include file="../footer.jsp" %>
</body>
</html>