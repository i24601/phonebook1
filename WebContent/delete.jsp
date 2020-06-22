<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>

<%
request.setCharacterEncoding("UTF-8");

int person_id = Integer.parseInt(request.getParameter("person_id"));

PhoneDao pDao = new PhoneDao();
pDao.personDelete(person_id);
response.sendRedirect("list.jsp");
%>