<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.microlearn.author.bean.*,com.microlearn.admin.dao.AdminDao,java.util.*"%>  


<jsp:useBean id="u" class="com.microlearn.author.bean.Author"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>


<%
boolean a = AdminDao.update(u); 
if(a)
{
	System.out.print(u.getAuthorid());
	
}
else
{
%>	
	<script>
	alert("Some Error Occured");
	</script>
	
	<jsp:include page="admin.jsp"></jsp:include>
<%
}


response.sendRedirect("admin.jsp");  
%>  