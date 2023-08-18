
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
        <li><a href="AdminHome.jsp">Home</a></li>
        <li class="active"><a href="AddVehicle.jsp">Add Vehicle</a></li>
        <li><a href="ViewVehicles.jsp">View Vehicles</a></li>
        <li><a href="BookedDetails.jsp">Rental Process</a></li>
        <li><a href="ViewFeedback.jsp">View Feedback</a></li>
        <li><a href="Admin.jsp">Logout</a></li>
        </ul>
    </div>
   
    <br class="clear" />
  </div>
</div>


<div class="wrapper col5">
  <div id="container">
    <div id="content">
      <h2 style="margin-bottom: 100px;">Add Vehicle Here</h2>
       <center>
      <center>
         
     <form action="AddVehicleAction.jsp" method="post">
          <table style="border:1px solid black;height:150px">
              <tr><th>Vehicle Name</th><td><input type="text" name="vname" required=""/></td></tr>
              <tr><th>Vehicle Company</th><td><input type="text" name="company" required=""/></td></tr>
                <tr><th>Vehicle Milage/Ltr</th><td><input type="text" name="milage" required=""/></td></tr>
                <tr><th>Capacity</th><td><input type="text" name="capacity" required=""/></td></tr>
                   <tr><th>Cost/a Day</th><td><input type="text" name="cost" required=""/></td></tr>
                 <tr><th></th><td><input type="submit" value="Upload" />
                    <input type="reset" value="Reset" /></td></tr>
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
