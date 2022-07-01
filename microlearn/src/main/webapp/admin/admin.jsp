<!DOCTYPE html>

<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>View Authors</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <link href="../css/admin.css" rel="stylesheet">
</head>

<body>

  <%@page import="com.microlearn.admin.dao.*, com.microlearn.author.bean.*, com.microlearn.books.bean.*, java.util.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



      <% String un=(String)session.getAttribute("username"); if(!un.equals("admin")) {
        response.sendRedirect("../user/UserLogin.jsp"); } else { List<Author> authorlist=AdminDao.getAllRecords();
        request.setAttribute("authorlist",authorlist);

        List<books> booklist=AdminDao.getBooks();
          request.setAttribute("booklist",booklist);

          %>



          <nav class="navbar navbar-dark  navbar-expand-md">
            <a href="index.jsp" class="navbar-brand  ">
              <img src="../images/Logo.png" height="50" alt="" id="imglogo">
            </a>
            <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse" id="navbar">
              <ul class="navbar-nav ms-auto">

                <li class="nav-item my-auto"><a href="../aboutus.jsp" class="nav-link ">About</a></li>
                <li class="nav-item my-auto"><a href="../user/logout.jsp" class="nav-link "><button type="button"
                      class="btn btn-primary rounded-pill">Logout</button></a></li>
              </ul>
            </div>
          </nav>




          <h3>Authors List</h3>

          <div class="table-responsive">
            <table border="1" class="table table-dark" width="90%">
              <tr>
                <th>Username</th>
                <th>Name</th>
                <th>Email</th>
                <th>isallowed</th>
                <th>Update</th>
              </tr>
              <c:forEach items="${authorlist}" var="u">
                <tr>
                  <td>${u.getAuthorid()}</td>
                  <td>${u.getName()}</td>
                  <td>${u.getEmail()}</td>
                  <td>${u.isIsallowed()}</td>
                  <td><a href="updateauthor.jsp?authorid=${u.getAuthorid()}">Update</a></td>
                </tr>
              </c:forEach>
            </table>
            <br />
          </div>



          <h3>Books List</h3>
          <div class="table-responsive">
            <table border="1" class="table table-dark" width="90%">
              <tr>
                <th>Bookname</th>
                <th>Author</th>
                <th>Bookid</th>
                <c:forEach items="${booklist}" var="b">
              <tr>
                <td>${b.getBookname()}</td>
                <td>${b.getAuthor()}</td>
                <td>${b.getBookid()}</td>
                </c:forEach>
            </table>
            <br />
          </div>




          <footer class="text-center text-lg-start">
            <!-- Copyright -->
            <div class="text-center p-3" style="background-color: black; color:white;">
              2022 Copyright: microLearn
              <br>
              microlearn@gmail.com
            </div>
            <!-- Copyright -->
          </footer>


          <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</body>

</html>
<% }%>