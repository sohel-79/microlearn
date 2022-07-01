<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.microlearn.user.dao.*" %>


<%


String un=request.getParameter("username");
String ps=request.getParameter("password");
boolean a = UserDao.login(un, ps);

if(a){
	session.setAttribute("username", un);
	response.sendRedirect("UserHome.jsp");
}
else
	
	if(un.equals("admin") && ps.equals("admin"))
	{
		session.setAttribute("username", un);
		response.sendRedirect("../admin/admin.jsp");
	}
	else{
%>
<script>
 alert("Invalid Username/Password");
</script>
<%

} %>
<jsp:include page="UserLogin.jsp" />  
