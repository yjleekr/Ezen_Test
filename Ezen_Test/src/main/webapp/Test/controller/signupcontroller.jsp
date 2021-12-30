<%@page import="Dto.Member"%>
<%@page import="Dao.MemberDao"%>
<%@page import="Dto.Login"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String email = request.getParameter("email");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address1")+","+ request.getParameter("address2")+","+
			request.getParameter("address3")+","+request.getParameter("address4");

	Member member = new Member(id, password, email, address, phone, name);
	
	boolean result = MemberDao.getmemberDao().singup(member);
	
	
	if(result){
		out.print("<script>alert('회원가입 되셨습니다.')</script>");
		out.print("<script>location.href='/Ezen_Test/Test/view/member/login.jsp'</script>");
	} else {
		out.print("<script>alert('회원가입을 실패하셨습니다.')</script>");
		out.print("<script>location.href='/Ezen_Test/Test/view/member/singup.jsp'</script>");
	}
%>