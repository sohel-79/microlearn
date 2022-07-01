<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.microlearn.ideas.dao.*" %>

<% 
response.addHeader("Pragma", "no-cache");
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
response.addHeader("Cache-Control", "pre-check=0, post-check=0");
response.setDateHeader("Expires", 0);

if(session.getAttribute("authorid")!=null)
{
	
}

else
{
	response.sendRedirect("AuthorLogin.jsp");
}




String title=request.getParameter("title");
String desc=request.getParameter("description");
String a_id=(String)session.getAttribute("authorid");

int b_id=(int)session.getAttribute("book_id");

boolean a =IdeasDao.addIdea(b_id, a_id, title, desc);

if(a)
{
	%>
	<script>
	alert("Idea Added Succsessfully");
	</script>
	<jsp:include page="BooksByAuthor.jsp"></jsp:include>
<%}
else
{
	%>
	<script>
	alert("Some Error Occured");
	</script>
	<jsp:include page="BooksByAuthor.jsp"></jsp:include>
<%

}
%>