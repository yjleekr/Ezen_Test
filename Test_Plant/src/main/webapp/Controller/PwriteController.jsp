<%@page import="Dao.ProductDao"%>
<%@page import="Dto.ProductDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	int no=Integer.parseInt(request.getParameter("no"));
	String ready=request.getParameter("ready");
	String print=request.getParameter("print");
	String coating=request.getParameter("coating");
	String paper=request.getParameter("paper");
	String join=request.getParameter("join");
	String packaging=request.getParameter("packaging");
	String fwork=request.getParameter("fwork");
	String ftime=request.getParameter("ftime");
	
	ProductDto productDto=new ProductDto(no, ready, print, coating, paper, join, packaging, fwork, ftime);
	boolean productwrite=ProductDao.getProductDao().productwrite(productDto);
	
	if(productwrite){
		out.print("<script>alert('공정이 등록 되었습니다.');</script>");
		response.sendRedirect("../Product/productwrite.jsp");
	} else {
		boolean result=ProductDao.getProductDao().productwrite(productDto);
		if(result){
			response.sendRedirect("../Product/productlist.jsp");
		} else {
			response.sendRedirect("../Product/productwrite.jsp");
		}
	}
%>