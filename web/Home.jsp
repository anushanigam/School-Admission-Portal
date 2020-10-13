<%-- 
    Document   : Home
    Created on : Aug 23, 2017, 5:53:29 PM
    Author     : N
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@1,800&display=swap" rel="stylesheet">
        <title>ZP School System</title>
    </head>
    <style>
                    body {
                    background-repeat: no-repeat;
                    background-size: cover;
                    
            }
            .carousel-inner img {
    width: 100%;
    height: 100%;
    
  }
 
  .carousel-caption{
       color:black;
      font-size:200%;
      margin-bottom:320px;
      font-family: 'Alegreya', serif;
      font-size:50px;
  }
        
    </style>
    <body>
         <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand/logo -->
  <a class="navbar-brand" href="#">School Management</a>
  
  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="Home.jsp">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Admission.jsp">Admission</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Fees.jsp">Fees</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Modify.jsp">Modify</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="AboutUs.jsp">About us</a>
    </li>
    
  </ul>
</nav> 
        
               <div id="demo" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="two.jpg" alt="Los Angeles" width="1100" height="400">
       <div class="carousel-caption">
        <h3>KIET GROUP OF INSTITUTIONS</h3>
        <p>Welcomes you!</p>
         <a  href="Admission.jsp" class="btn btn-primary">Admissions Open</a>
      </div> 
    </div>
    <div class="carousel-item">
      <img src="one.jpg" alt="Chicago" width="1100" height="400">
      <div class="carousel-caption text-white" >
        <h3>KIET GROUP OF INSTITUTIONS</h3>
        <p>Welcomes you!</p>
         <a  href="Admission.jsp" class="btn btn-primary">Admissions Open</a>
      </div> 
    </div>
    <div class="carousel-item">
      <img src="three.jpg" alt="New York" width="1100" height="400">
      <div class="carousel-caption text-white" >
        <h3>KIET GROUP OF INSTITUTIONS</h3>
        <p>Welcomes you!</p>
         <a  href="Admission.jsp" class="btn btn-primary">Admissions Open</a>
      </div> 
    </div>
  </div>
  
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

            
        
    </body>
</html>
