<%@page import="Dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("m_id");
	String password=request.getParameter("m_password");
	
	boolean result = MemberDao.getmemberDao().login(id, password);
	
	if(result) {
		out.print("<script>alert('로그인이 되셨습니다')</script>");
		out.print("<script>location.href='/Ezen_Test/Test/view/main.jsp'</script>");
	} else {
		out.print("<script>alert('로그인이 실패 되었습니다.')</script>");
		out.print("<script>location.href='/Ezen_Test/Test/view/member/login.jsp'</script>");
	}
%>