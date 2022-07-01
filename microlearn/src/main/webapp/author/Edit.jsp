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
int idea_id=(int)session.getAttribute("idea_id");
 
boolean a=IdeasDao.editIdea(title, desc, idea_id);

if(a)
{
	%>
	<script>
	alert("Idea Updated Succsessfully");
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