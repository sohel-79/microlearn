<%@ page import="java.io.*,java.util.*,java.sql.*" %>
  <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
        <!DOCTYPE html>
        <html>

        <head>
          <meta charset="ISO-8859-1">
          <title>Books By Author</title>
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
          <link rel="stylesheet" href="../css/author/booksbyauthor.css">
        </head>

        <body>

          <% response.addHeader("Pragma", "no-cache" );
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
            response.addHeader("Cache-Control", "pre-check=0, post-check=0" ); response.setDateHeader("Expires", 0);
            if(session.getAttribute("authorid")!=null) { } else { response.sendRedirect("AuthorLogin.jsp"); }
            session.getAttribute("authorid");%>



            <nav class="navbar navbar-dark  navbar-expand-md">
              <a href="../index.jsp" class="navbar-brand  ">
                <img src="../images/Logo.png" height="50" alt="" id="imglogo">
              </a>
              <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="navbar-collapse collapse" id="navbar">
                <ul class="navbar-nav ms-auto">
                  <li class="nav-item my-auto"><a href="AuthorHome.jsp" class="nav-link ">Home</a></li>
                  <li class="nav-item my-auto"><a href="../aboutus.jsp" class="nav-link ">About</a></li>
                  <li class="nav-item my-auto"><a href="logout.jsp" class="nav-link "><button type="button"
                        class="btn btn-primary rounded-pill">Logout</button></a></li>
                </ul>
              </div>
            </nav>


            <sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost/microlearn"
              user="postgres" password="root" />


            <sql:query dataSource="${db}" var="rs">
              SELECT * from books where author=?;
              <sql:param value="${authorid}" />
            </sql:query>




            <div class="container-fluid">
              <div class="row">
                <c:forEach var="book" items="${rs.rows}">


                  <div class="col-12 col-sm-6 col-md-4 col-lg-3">
                    <div class="card ">
                      <div class="card-body">
                        <img src="<c:out value=" ${book.image}" />" class="card-img-top" alt="...">
                        <h5 class="card-title">${book.bookname}</h5>
                        <a href="ViewIdeas.jsp?bookid=${book.bookid}" class="btn btn-primary">View Ideas</a>
                        <a href="AddProcess.jsp?bookid=${book.bookid}" class="btn btn-primary"> Add Ideas to Book</a>
                      </div>
                    </div>
                  </div>



                </c:forEach>
              </div>
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