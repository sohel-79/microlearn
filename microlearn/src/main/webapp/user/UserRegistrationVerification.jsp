<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.microlearn.user.dao.*" %>


<% 
if(request.getParameter("username")==null)
{
	response.sendRedirect("UserRegistration.jsp");
	
	
}
else
{
	String un=request.getParameter("username");
	String ps=request.getParameter("password");
	String emid=request.getParameter("emailid");
	String nm=request.getParameter("name");

	boolean username_confirm = UserDao.username(un);
	boolean email_confirm = UserDao.email(emid);

	if(username_confirm)
	{
	%>
	<script>
 	alert("Username Already Exists!!!");
	</script>
	
	<jsp:include page="UserRegistration.jsp"></jsp:include>
	<%
	}
	else if(email_confirm)
	{
	%>
	<script>
 	alert("Email Already Exists!!!");
	</script>
	<jsp:include page="UserRegistration.jsp"></jsp:include>
	<%
	}
	else 
	{
		UserDao.register(un, emid, ps, nm);
	%>
	<script>
 	alert("Registered Successfully");
	</script>
	<jsp:include page="UserRegistration.jsp"></jsp:include>
	<% 
	}
}
%>
