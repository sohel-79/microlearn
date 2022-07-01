<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.microlearn.author.dao.*" %>



<% 
if(request.getParameter("authorid")==null)
{
	response.sendRedirect("AuthorRegistration.jsp");
	
	
}
else
{
	String a_id=request.getParameter("authorid");
	String ps=request.getParameter("password");
	String emid=request.getParameter("emailid");
	String nm=request.getParameter("name");

	boolean username_confirm =AuthorDao.username(a_id);
	boolean email_confirm =AuthorDao.email(emid);

	if(username_confirm)
	{
	%>
	<script>
	alert("Username Already Exists!!!");
	</script>
	
	<jsp:include page="AuthorRegistration.jsp"></jsp:include>
	<%
	}
	else if(email_confirm)
	{
	%>
	<script>
	alert("Email Already Exists!!!");
	</script>
	<jsp:include page="AuthorRegistration.jsp"></jsp:include>
	<%
	}
	else 
	{
		AuthorDao.register(a_id, emid, ps, nm);
	%>
	<script>
	alert("Your request is submitted\n Wait for verification");
	</script>
	<jsp:include page="AuthorLogin.jsp"></jsp:include>
	<% 
	}
}
%>
