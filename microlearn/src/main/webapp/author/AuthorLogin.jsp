<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login | MicroLearn</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/author/login.css">
    <link href="https://fonts.googleapis.com/css2?family=Bungee&display=swap" rel="stylesheet">
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

                <li class="nav-item my-auto"><a href="../aboutus.jsp" class="nav-link ">About</a></li>
            </ul>
        </div>
    </nav>



    <div class="row no-gutters">
        <div class="col-12 col-sm-12 col-md-5 d1 vh-100">

            <h2>Login to MicroLearn</h2>
            <form action="AuthorLoginVerification.jsp" method="post" id="Loginform">
                <label>Enter Username:</label>
                <br>
                <input type="text" name="authorid" placeholder="Enter Username" required>
                <br>
                <br>
                <label>Enter Password:</label>
                <br>
                <input type="password" name="password" placeholder="Enter Password" required>
                <br>
                <br>
                <br>
                <input type="submit" value="Login">
            </form>
            <br>
            <form action="AuthorRegistration.jsp" id="RegistrationPage">
                <br>
                <input type="submit" value="SignUp" id="submit2">
            </form>
        </div>


        <div class="col-md-7 d-none d-sm-none d-md-flex">
            <a href="https://www.vecteezy.com/free-vector/computer"><img class="img-fluid"
                    src="../images/login/authorlogin.jpg"></a>
        </div>
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





    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
        crossorigin="anonymous"></script>

</body>

</html>