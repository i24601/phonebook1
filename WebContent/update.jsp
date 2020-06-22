<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	request.setCharacterEncoding("UTF-8");
int person_id = Integer.parseInt(request.getParameter("person_id"));
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");
PersonVo pVo = new PersonVo(person_id, name, hp, company);
PhoneDao pDao = new PhoneDao();
pDao.personUpdate(pVo);
response.sendRedirect("list.jsp");
%>
