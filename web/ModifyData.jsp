<%-- 
    Document   : ModifyData
    Created on : Aug 24, 2017, 5:47:13 PM
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
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-image:url('bg.jpeg');
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
        try {
         String stdnm1=request.getParameter("name");
        String gen1=request.getParameter("gender");
        String eml=request.getParameter("email");
        String cst1=request.getParameter("branch");
        String mb1=request.getParameter("fname");
        String std1=request.getParameter("city");
        String mdm1=request.getParameter("Street");
        String add1=request.getParameter("phone");
        
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/school","root","anigam123");
             
             
             st=c1.createStatement();
             
              q="update admission set gender='"+gen1+"',email='"+eml+"',branch='"+cst1+"',fname='"+mb1+"',city='"+std1+"',Street='"+mdm1+"',phone='"+add1+"' where st_name='"+stdnm1+"'";
            
              st.executeUpdate(q);
            out.println("<html>");
                    out.println("<head>");
                    out.println("<link rel='stylesheet' href='styles.css'>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<table height='50%' style='vertical-align: middle;'  align='center'><tr><td>");
                     out.println("Here is Your Updated Information..<br><br>");
                    out.println("Student Name : "+stdnm1+"<br> ");
                     out.println("      Gender : "+gen1+" <br>");
                     out.println("      Email : "+eml+" <br>");
                     out.println("       branch : "+cst1+" <br>");
                     out.println("      fname : "+mb1+"<br>");
                     out.println("    city: "+std1+"<br>");
                     out.println("     street : "+mdm1+" <br>");
                     out.println("    phone : "+add1+" <br>");
                     out.println("</tr></td>");
                     out.println("</table>");
                    out.println("</body>");
                    out.println("</html>");
             }
    catch(Exception e)
    {
        out.println(e);
                 //   out.println("Invalid Insertion<br>");
                  // out.println("<a href='Login.jsp'>Try Again</a>");
    }        
                    %>

    </body>
</html>
