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

int idea_id=Integer.parseInt(request.getParameter("ideaid"));

boolean a=IdeasDao.deleteIdea(idea_id);

if(a)
{
%>
	<script>
	alert("Idea Deleted Succsessfully");
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