<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	request.setCharacterEncoding("UTF-8");
String name = request.getParameter("name");
String hp = request.getParameter("hp");
String company = request.getParameter("company");
PhoneDao pDao = new PhoneDao();
//List<PersonVo> pList = pDao.getPersonList(); 왜 있는거지
pDao.personInsert(new PersonVo(name,hp,company));

response.sendRedirect("list.jsp");
%>