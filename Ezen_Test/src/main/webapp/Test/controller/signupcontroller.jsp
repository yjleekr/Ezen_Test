<%@page import="Dto.Member"%>
<%@page import="Dao.MemberDao"%>
<%@page import="Dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	String address = request.getParameter("address1")+","+ request.getParameter("address2")+","+
			request.getParameter("address3")+","+request.getParameter("address4");
	
	
	
	Member member = new Member(id, password, name, phone, email, address);
	
	boolean result = MemberDao.getmemberDao().singup(member);
	
	if(result){
		out.print(1);
	} else {
		out.print(2);
	}
%>