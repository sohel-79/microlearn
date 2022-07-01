
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    

<title>Login | microLearn</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<link rel="stylesheet" href="../css/user/login.css">
<link href="https://fonts.googleapis.com/css2?family=Bungee&display=swap" rel="stylesheet">
</head>
<body>

    
    <nav class="navbar navbar-dark  navbar-expand-md">
        <a href="../index.jsp" class="navbar-brand  ">
          <img src="../images/Logo.png" 
          height="50"
          alt=""
          id="imglogo">
        </a>
        <button class="navbar-toggler" data-bs-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="navbar-collapse collapse" id="collapseExample">
            <ul class="navbar-nav ms-auto">
               
                <li class="nav-item my-auto"><a href="../aboutus.jsp" class="nav-link ">About</a></li>
            </ul>
        </div>
      </nav>



    <div class="row no-gutters">    
<div class= "col-12 col-sm-12 col-md-5 d1 vh-100">   

    <h2>Login to MicroLearn</h2>
<form action="UserLoginVerification.jsp" method="post" id="Loginform">
    <label>Enter Username:</label>
    <br>
    <input type="text" name="username" placeholder="Enter Username" required>
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
<form action="UserRegistration.jsp">
    <br>
    <input type="submit" value="SignUp" id="submit2">
</form>
</div>


<div class="col-md-7 d-none d-sm-none d-md-flex">
    <a href="https://www.vecteezy.com/free-vector/book"><img class="img-fluid" src="../images/login/login.jpg"></a>
</div>
</div>


<br>
<footer class="text-center text-lg-start">
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: black; color:white;">
    © 2022 Copyright: microLearn
    	<br>
  	microlearn@gmail.com
  </div>
  <!-- Copyright -->
</footer>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>s
</body>
</html>