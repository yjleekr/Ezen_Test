<%@page import="Dto.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
		
	Board board = new Board(title, contents);
%>