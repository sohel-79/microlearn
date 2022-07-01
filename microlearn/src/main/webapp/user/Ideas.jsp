<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">

    <%@ page import="java.io.*,java.util.*,java.sql.*" %>
      <%@ page import="javax.servlet.http.*,javax.servlet.*" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

          <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="f" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

              <%@ page import="com.microlearn.user.dao.*" %>

                <% response.addHeader("Pragma", "no-cache" );
                  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
                  response.addHeader("Cache-Control", "pre-check=0, post-check=0" ); response.setDateHeader("Expires",
                  0); if(session.getAttribute("username")!=null) { } else { response.sendRedirect("UserLogin.jsp"); } %>







                  <title>
                    Ideas | microLearn
                  </title>

                  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                    crossorigin="anonymous">
                  <link rel="stylesheet" href="../css/user/Ideas.css">
  </head>

  <body>


    <nav class="navbar navbar-dark  navbar-expand-md">
      <a href="../index.jsp" class="navbar-brand  ">
        <img src="../images/Logo.png" height="50" alt="" id="imglogo">
      </a>
      <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse collapse" id="navbar">
        <ul class="navbar-nav ms-auto">
          <li class="nav-item my-auto"><a href="UserHome.jsp" class="nav-link ">Home</a></li>

          <li class="nav-item my-auto"><a href="../aboutus.jsp" class="nav-link ">About</a></li>
          <li class="nav-item my-auto"><a href="logout.jsp" class="nav-link "><button type="button"
                class="btn btn-primary rounded-pill">Logout</button></a></li>

        </ul>
      </div>
    </nav>





    <% int book_id=Integer.parseInt(request.getParameter("bookid")); request.setAttribute("book_id", book_id); String
      user_id=(String)session.getAttribute("username"); %>

      <!--      <c:out value="${book_id}" />
-->

      <sql:setDataSource var="db" driver="org.postgresql.Driver" url="jdbc:postgresql://localhost/microlearn"
        user="postgres" password="root" />

      <sql:query dataSource="${db}" var="bk">
        SELECT * from books where bookid=?;
        <sql:param value="${book_id}"></sql:param>
      </sql:query>

      <div>
        <c:forEach var="book" items="${bk.rows}">
          <div class="card mx-5 my-4" id=book style="width: 20rem;">
            <div class="card-body">
              <img src="<c:out value=" ${book.image}" />" class="card-img-top" alt="...">
              <div class="card-body">
                <h3 class="card-title">${book.bookname}</h3>
              </div>
            </div>
        </c:forEach>
      </div>

      <sql:query dataSource="${db}" var="rs">
        SELECT * from ideas where bookid=? and isdeleted=false order by id;
        <sql:param value="${book_id}"></sql:param>
      </sql:query>



      <div class="container-fluid">
        <div class="row">
          <c:forEach var="card" items="${rs.rows}">

            <div class="col-12 col-md-6 col-sm-6 col-lg-4">
              <div class="card text-white bg-dark mb-3" id=book style="width:  max-width: 110px;;">
                <div class="card-body">
                  <h3 class="card-title">${card.title}</h3>
                  <c:set var="content" value="${card.description}" />
                  <c:set var="nl" value="
" />
                  <c:set var="c" value="${f:replace(content,nl, '<br/> ')}" />


                  <p class="card-text">
                    ${c}
                  </p>
                  <%-- <%if%>
                    <a>Unsave</a>
                    <%else%> --%>
                      <a href="Saveprocess.jsp?ideaid=${card.id}" id="s"></a>
                      <!-- 
    <button type="button" class="btn btn-primary rounded-pill save">save</button> -->
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






      </script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
  </body>

  </html>