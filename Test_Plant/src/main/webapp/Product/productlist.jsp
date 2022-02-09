<%@page import="Dao.ProductDao"%>
<%@page import="Dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
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
width: 50%;
margin: auto;
}
tr{
text-align: center;
}
#trid{font-weight: bold;
}
td{padding: 10px;}

</style>
</head>
<body>
<%@include file="../header.jsp" %>
<%@include file="../nav.jsp" %>

<%
	ArrayList<ProductDto> products = ProductDao.getProductDao().getlist();
%>

<div class="container">
		<div class="row">
			<h3>작업공정조회</h3>
		</div>
		<div>
			<table>
				<tr id="trid">
					<td>작업지시번호</td>
					<td>준비</td><td>인쇄</td><td>코팅</td><td>합지</td><td>접합</td><td>포장</td>
					<td>최종공정일자</td><td>최종공정시간</td>
				</tr>
				<% for(ProductDto productDto : products) { %>
					<tr>
						<td><%=productDto.getNo() %></td>
						<% if(productDto.getReady().equals("완료")) { %>
							<td>완료</td>
						<% } %>
						<% if(productDto.getReady().equals("작업중")) { %>
							<td>-</td>
						<% } %>
						
						<% if(productDto.getPrint().equals("완료")) { %>
							<td>완료</td>
						<% } %>
						<% if(productDto.getPrint().equals("작업중")) { %>
							<td>-</td>
						<% } %>
						
						<% if(productDto.getCoating().equals("완료")) { %>
							<td>완료</td>
						<% } %>
						<% if(productDto.getCoating().equals("작업중")) { %>
							<td>-</td>
						<% } %>
						
						<% if(productDto.getPaper().equals("완료")) { %>
							<td>완료</td>
						<% } %>
						<% if(productDto.getPaper().equals("작업중")) { %>
							<td>-</td>
						<% } %>
						
						<% if(productDto.getJoin().equals("완료")) { %>
							<td>완료</td>
						<% } %>
						
						<% if(productDto.getJoin().equals("작업중")) { %>
							<td>-</td>
						<% } %>
						
						<% if(productDto.getPackaging().equals("완료")) { %>
							<td>완료</td>
						<% } %>
						
						<% if(productDto.getPackaging().equals("작업중")) { %>
							<td>-</td>
						<% } %>
						
						<td><%=productDto.getFwork() %></td>
						<td><%=productDto.getFtime() %></td>
					</tr>
				<% } %>
			</table>
		</div>
	</div>
	
	<%@ include file="../footer.jsp" %>
</body>
</html>