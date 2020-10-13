<%-- 
    Document   : Modify
    Created on : Aug 23, 2017, 6:48:55 PM
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
        <title>ZP School System</title>
        <style>
            body {background-image:url('bg.jpeg');
                    background-repeat: no-repeat;
                    background-size: cover;}
            
   

        </style>

    </head>
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
        <br>
        <br>
        <div class="container">
            <h3><b>Delete Student Data</b></h3>
         <form method="post" action="DeleteData.jsp">
          <div class="form-group">
      <label for="name">Student Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter Student Name" name="name">
    </div>
             <button type="submit" class="btn btn-primary">Delete</button>
         </form><br><br>
        <a href="ModifyStudent.jsp">Click Here to modify Student Data</a>
    </body>
</html>
