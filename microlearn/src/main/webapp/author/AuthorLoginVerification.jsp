<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="com.microlearn.author.dao.*" %>


<%
String a_id=request.getParameter("authorid");
String ps=request.getParameter("password");
boolean a = AuthorDao.login(a_id, ps);
if(a){
	session.setAttribute("authorid", a_id);
	response.sendRedirect("AuthorHome.jsp");
}
else{
%>
<script>
alert("Invalid Username/Password\n Or You are not authorized yet");
</script>
<% }%>
<jsp:include page="AuthorLogin.jsp"></jsp:include>
