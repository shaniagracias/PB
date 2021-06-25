<%-- 
    Document   : pbsignup
    Created on : Apr 30, 2021, 2:04:25 PM
    Author     : ASUS
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="Allpage.css">
 <link rel="stylesheet" href="signup.css">  
    
        <title>JSP Page</title>
    </head>
    <body>
       <div class="header">
    
    <a href="Purplebubblehome.html" class="logo">PURPLEBUBBLE</a>
       </div>
        <div class="container">  
 <div style="text-align:center">
    <h2>SIGN-UP<hr style="height:2px;width:50%;color:gray;background-color:gray"/></h2>
    <p></p>
  </div>
 

      <div class="row">
    <div class="column">
      <img src="BTSMOTS7-min.jpg" style="width:100%">
    </div>
 <div class="column">
      <form method="post">
           <label for="fname"><b>First Name: </b></label>
           <% String s1=request.getParameter("firstname")%>
           
           <label for="lname"><b>Last Name: </b></label>s
           <% String s2 request.getParameter("lastname")%>

            <label for="email"><b>Email: </b></label>
            <% String s3 request.getParameter("email")%>

             <label for="psw"><b>Password: </b></label>
             <% String s4 request.getParameter("psw")%>

             <label for="psw-repeat"><b>Repeat Password: </b></label>
             <% String s5 request.getParameter("psw-repeat")%>
             
      <% User u= new User(s1,s2,s3,s4,s5);
      session.setAttribute("user","u")%>
      </form>
           
 </div>
      </div>
      </div>
       <table border="1">
    <thead>
        <tr>
            <th>Property</th>
            <th>Value</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>First name</td>
            <td><%u.firstname()%></td>
        </tr>
        <tr>
            <td>Last name</td>
            <td><%u.lastname()%></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><%u.email()%></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><%u.psw()%></td>
        </tr>
        <tr>
            <td>Repeat Password</td>
            <td><%u.psw-repeat()%></td>
        </tr>
    </tbody>
</table> 
    </body>
</html>
