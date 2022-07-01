<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
session.removeAttribute("authorid");
session.removeAttribute("book_id");
response.sendRedirect("../index.jsp");
%>