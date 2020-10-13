<%-- 
    Document   : DeleteData
    Created on : Aug 24, 2017, 5:47:23 PM
    Author     : N
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <title>JSP page</title>
    </head>
    <style>
                    body {background-image:url('bg.jpeg');
                    background-repeat: no-repeat;
                    background-size: cover;
                    
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
         <%
                         
        Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
          try
          {
               String stdnm=request.getParameter("name");
        
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/school","root","anigam123");
             
             st = c1.createStatement();
             q="delete from admission where st_name='"+stdnm+"'";
             
             st.executeUpdate(q);
            out.println("<html>");
                    out.println("<head>");
                    out.println("<link rel='stylesheet' href='styles.css'>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<table height='50%' style='vertical-align: middle;'  align='center'><tr><td>");
                    out.println(""+stdnm+", student Data Deleted Successfully..<br><br>");
                     out.println("</tr></td>");
                     out.println("</table>");
                    out.println("</body>");
                    out.println("</html>");
        
                }
             catch(Exception e)
             {
                    out.println("Invalid Deletion<br>");
                     out.println("<a href='delete.jsp'>Try Again</a>");
             }
            
   %>
    </body>
</html>
