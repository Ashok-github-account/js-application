<%-- 
    Document   : Admin
    Created on : 29 Jul, 2021, 12:53:10 PM
    Author     : KishanVenky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<title>Car Rental</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="header">
    <div id="logo" style="width:auto;"> 
      <h1><a href="#">Car Rental System</a></h1>
      <p><strong></strong></p>
    </div>
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col2">
  <div id="topbar">
    <div id="topnav">
      <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="Admin.jsp">Admin</a></li>
        <li class="active"><a href="User.jsp">Customer</a></li>
       
        
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h2>USER LOGIN</h2>
       <center>
      <form action="UserAction.jsp" method="post">
          <table style="border:1px solid black;height:150px">
              <tr><th>UserName</th><td><input type="text" name="username" required=""/></td></tr>
               <tr><th>Password</th><td><input type="password" name="password" required=""/></td></tr>
                <tr><th></th><td><input type="submit" value="Login" />
                    <input type="reset" value="Reset" />
                    <a href="Register.jsp">Register</a></td></tr>
          </table>
          
          
      </form>
      </center>
    </div>
    <div id="column">
        <image src="images/car.jpg" width="400" height="400"/>
    </div>
    <br class="clear" />
  </div>
</div>
<div class="wrapper col6">
  <div id="footer">
    
    
    
    <br class="clear" />
  </div>
</div>
<div class="wrapper col7">
  <div id="copyright">
    <p class="fl_left">Car Rental System</p>
     <br class="clear" />
  </div>
</div>
</body>
</html>
