
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
      <li><a href="AdminHome.jsp">Home</a></li>
        <li><a href="AddVehicle.jsp">Add Vehicle</a></li>
        <li><a href="ViewVehicles.jsp">View Vehicles</a></li>
        <li class="active"><a href="BookedDetails.jsp">Rental Process</a></li>
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
          <table>
              <tr>
                  <th>User Name</th>
                  <th>Vehicle Name</th>
                  <th>Vehicle Company</th>
                  <th>Milage /Ltr</th>
                  <th>Cost/Day</th>
                   <th>Booking Days</th>
                  <th>Date Of Booking</th>
                   <th>Total Price</th>
                    <th>Payment Mode</th>
                    <th>Action</th>
              </tr>
              <%try{
                  String query="select * from vehicle v, booking b where v.id=b.cid";
                  ResultSet r=Queries.getExecuteQuery(query);
                  while(r.next()){
                      String status=r.getString("b.status");
                      %>
                      <tr>
                           <td><%=r.getString("b.uname")%></td>
                          <td><%=r.getString("v.name")%></td>
                          <td><%=r.getString("v.company")%></td>
                          <td><%=r.getString("v.milage")%></td>
                          <td><%=r.getString("v.cost")%> Rs/-</td>
                           <td><%=r.getString("b.days")%></td>
                          <td><%=r.getString("b.date")%></td>
                          <td><%=r.getString("b.tcost")%> Rs/-</td>
                           <td>Online Done</td>
                          <%if(status.equals("waiting")){%>
                          <td><a href="ConfirmCar.jsp?id=<%=r.getString("b.id")%>">Confirm Car</a></td>
                          <%}else{%>
                          <td><%=r.getString("b.status")%></td>
                          <%}%>
                        </tr>
                      <%
                  }
              }catch(Exception e){
                  out.println(e);
}%>
              
          </table>
     <%
         String cid=request.getParameter("id");
          String cost=request.getParameter("cost");
     if(cid!=null){
         %>
         <form action="BookAction1.jsp" method="post">
         <table>
             <h3>Book Car Now</h3>
             <tr><th>Car ID</th><td><input type="text" name="cid" value="<%=cid%>" readonly=""></td></tr>
             <tr><th>Car Cost</th><td><input type="text" name="cost" value="<%=cost%>" readonly="">Rs/-</td></tr>
             <tr><th>No.of Days</th><td><input type="number" name="days" required=""></td></tr>
             <tr><th></th><td><input type="submit" value="Upload"><a href="C_ViewVehicles.jsp">Back</a></td></tr>
         </table>
         </form>
         <%
}%>
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
