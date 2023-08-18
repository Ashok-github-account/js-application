
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
          <li><a href="UserHome.jsp">Home</a></li>
       <li class="active"><a href="C_ViewVehicles.jsp">View Vehicles</a></li>
        <li><a href="C_BookedDetails.jsp">Booked Details</a></li>
       <li><a href="User.jsp">Logout</a></li>
        
      </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
         <%String id=(String)session.getAttribute("id");
        String username=(String)session.getAttribute("uname");%>
        
      <h2 style="margin-bottom: 100px;"></h2>
       <center>
      <center>
         
     <%
         String cid=request.getParameter("cid");
    String cost=request.getParameter("cost");
    String days=request.getParameter("days");
    
    int c=Integer.parseInt(cost);
    int d=Integer.parseInt(days);
    
    int tcost=c*d;
     
         %>
         <form action="BookAction.jsp" method="post">
         <table>
             <h3>Add Payment Here</h3>
             <tr><th>Car ID</th><td><input type="text" name="cid" value="<%=cid%>" readonly=""></td></tr>
             <tr><th>Car Cost</th><td><input type="text" name="cost" value="<%=cost%>" readonly="">Rs/-</td></tr>
             <tr><th>No.of Days</th><td><input type="number" name="days" value="<%=days%>" readonly=""></td></tr>
            
               <tr><th>Card No</th><td><input type="number" name="cno" required=""></td></tr>
                <tr><th>Expire Date</th><td><input type="date" name="edate" required=""></td></tr>
                <tr><th>CVV</th><td><input type="password" name="cvv" required=""></td></tr>
                 <tr><th>Total Cost</th><td><input type="number" name="tcost" value="<%=tcost%>" readonly=""></td></tr>
             <tr><th></th><td><input type="submit" value="Confirm Booking"><a href="C_ViewVehicles.jsp">Back</a></td></tr>
         </table>
         </form>
   
      </center>

    </div>
    <div id="column">
     
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
