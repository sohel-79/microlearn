<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/author/add.css">
  </head>

  <body>
    <% response.addHeader("Pragma", "no-cache" );
      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
      response.addHeader("Cache-Control", "pre-check=0, post-check=0" ); response.setDateHeader("Expires", 0);
      if(session.getAttribute("authorid")!=null) { } else { response.sendRedirect("AuthorLogin.jsp"); } String
      a_id=(String)session.getAttribute("authorid"); session.setAttribute("authorid", a_id); %>



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
            <li class="nav-item my-auto"><a href="logout.jsp" class="nav-link "><button type="button"
                  class="btn btn-primary rounded-pill">Logout</button></a></li>
          </ul>
        </div>
      </nav>



      <div class="container" id="bookform">
        <h4> Welcome ${authorid}</h4>
        <br><br>
        <p id="p1">Fill the form to add your book and ideas</p>
        <br>
        <form method="post" action="../BooksDao" enctype="multipart/form-data">
          <label>Enter Book Name:</label><br><br>
          <input type="text" name="bookname"><br><br>
          <input type="hidden" name="author" value="${authorid}"><br><br>
          <label>Add Book image:</label>
          <input type="file" name="bookimg" id="fileUpload"><br><br>
          <input type="submit" value="Submit">
        </form>
        <a href="BooksByAuthor.jsp "><button type="button" class="btn btn-info" id="button1">View Your
            Books</button></a>

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