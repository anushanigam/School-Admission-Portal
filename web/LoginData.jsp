<%-- 
    Document   : LoginData
    Created on : Aug 23, 2017, 5:29:59 PM
    Author     : N
--%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="styles.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>College Management System</title>
    </head>
    <body>
        <%
                     Connection c1 = null;
        Statement st = null;
        ResultSet rs1;
        String q="";
        try {
         String lgnm=request.getParameter("name");
        String ps1=request.getParameter("pwd");
        
              Class.forName("com.mysql.jdbc.Driver").newInstance();
             c1=DriverManager.getConnection("jdbc:mysql://localhost/school","root","anigam123");
             
             
             st=c1.createStatement();
             q="select * from admin where username='"+lgnm+"' and password='"+ps1+"'";
            rs1=st.executeQuery(q);
                       if(rs1.next())
          {
              out.println("<html>");
                    out.println("<head>");
                    out.println("<link rel='stylesheet' href='styles.css'>");
                    out.println("</head>");
                    out.println("<body>");
                    out.println("<table style='vertical-align: middle;' border='2'  align='center'><tr><td>");
                    out.println("Welcome " + lgnm +"");
                    out.println("<a href='Home.jsp'>Click Here To Continue</a>");
                     out.println("</td></tr>");
                     out.println("</table>");
                    out.println("</body>");
                    out.println("</html>");
          }
           else
          {
              out.println("Invalid Login<br>");
              out.println("<a href='index.html'>Try Again</a>");
             }
            out.println("</td></tr></table>");
            out.println("</body>");
            out.println("</html>");
             }
    catch(Exception e)
    {
                    out.println("Invalid Insertion<br>");
                   out.println("<a href='Login.jsp'>Try Again</a>");
    }        
                    %>
    </body>
</html>
