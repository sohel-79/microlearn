<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <!DOCTYPE html>
  <html>

  <head>
    <meta charset="ISO-8859-1">
    <title>Sitemap</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="css/sitemap.css">
    <link href="https://fonts.googleapis.com/css2?family=Caveat:wght@400;700&display=swap" rel="stylesheet">
  </head>

  <body>


    <nav class="navbar navbar-dark  navbar-expand-md">
      <a href="index.jsp" class="navbar-brand  ">
        <img src="images/Logo.png" height="50" alt="" id="imglogo">
      </a>
      <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="navbar-collapse collapse" id="navbar">
        <ul class="navbar-nav ms-auto d-block d-sm-none">

          <li class="nav-item my-auto"><a href="aboutus.jsp" class="nav-link ">About</a></li>
          <li class="nav-item my-auto"><a href="author/AuthorLogin.jsp" class="nav-link "><button type="button"
                class="btn btn-primary rounded-pill">Login as Author</button></a></li>
          <li class="nav-item my-auto"><a href="author/AuthorRegistration.jsp" class="nav-link "><button type="button"
                class="btn btn-primary rounded-pill">Register as Author</button></a></li>
          <li class="nav-item my-auto"><a href="Sitemap.jsp" class="nav-link ">SiteMap</a></li>

        </ul>
      </div>
    </nav>


    <br>
    <div class="container">
      <div class="row">
        <div class="col-sm-3 md-3 lg-3 d-none d-sm-block">
          <div class="list-group">
            <a href="aboutus.jsp" class="list-group-item list-group-item-action">About Us</a>
            <a href="author/AuthorLogin.jsp"
              class="list-group-item list-group-item-action list-group-item-primary">Login as Author</a>
            <a href="author/AuthorRegistration.jsp"
              class="list-group-item list-group-item-action list-group-item-primary">Register as Author</a>
            <a href="Sitemap.jsp" class="list-group-item list-group-item-action">SiteMap</a>
          </div>
        </div>






        <div class="col-sm-9 md-9 lg-9">
          <img src="images/sitemap.png" class="img-fluid">
        </div>
      </div>
    </div>


    <br>
    <br>

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