<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#ul{
	text-align: left;
	padding: 15px;
	background-color: blue;
}
a{color: white;}
.li{
	display: inline;
	margin-left: 20px;
	color: white;
}

</style>
</head>
<body>
<ul id="ul">
	<li class="li">제품조회</li>
	<li class="li">작업지시서조회</li>
	<li class="li"><a href="/Test_Plant/Product/productwrite.jsp">작업공정등록</a></li>
	<li class="li"><a href="/Test_Plant/Product/productlist.jsp">작업공정조회</a></li>
	<li class="li">홈으로</li>
</ul>
</body>
</html>