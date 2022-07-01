<%@ page import="com.microlearn.ideas.dao.*, com.microlearn.ideas.bean.*" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">

    <title>Addd Ideas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/author/add.css">
  </head>

  <body>

    <% response.addHeader("Pragma", "no-cache" );
      response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate" );
      response.addHeader("Cache-Control", "pre-check=0, post-check=0" ); response.setDateHeader("Expires", 0);
      if(session.getAttribute("authorid")!=null) { } else { response.sendRedirect("AuthorLogin.jsp"); }
      session.getAttribute("book_id"); int idea_id=Integer.parseInt(request.getParameter("ideaid")); Ideas
      i=IdeasDao.getIdeaById(idea_id); session.setAttribute("idea_id", idea_id); %>


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


      <div class="container">
        <form action="Edit.jsp" method="post">
          <br>
          <label>Add Title:</label>
          <br>
          <br>
          <input type="text" name="title" value="<%=i.getTitle() %>">
          <br>
          <br>
          <label>Add Description</label>
          <br>
          <br>
          <textarea rows="10" cols="70" name="description"><%=i.getDescription() %></textarea>
          <br>

          <input type="submit" value="Submit">
        </form>


      </div>




      <footer class="text-center text-lg-start">
        <!-- Copyright -->
        <div class="text-center p-3" style="background-color: black; color:white;">
          � 2022 Copyright: microLearn
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