
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
        <li class="active"><a href="ViewVehicles.jsp">View Vehicles</a></li>
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
          <table>
              <tr>
                  <th>Vehicle Name</th>
                  <th>Vehicle Company</th>
                  <th>Milage /Ltr</th>
                   <th>Capacity</th>
                  <th>Cost/Day</th>
                  <th>Upload Date</th>
                  <th>Update</th>
              </tr>
              <%try{
                  String query="select * from vehicle";
                  ResultSet r=Queries.getExecuteQuery(query);
                  while(r.next()){
                      %>
                      <tr>
                          <td><%=r.getString("name")%></td>
                          <td><%=r.getString("company")%></td>
                          <td><%=r.getString("milage")%></td>
                          <td><%=r.getString("capacity")%></td>
                          <td><%=r.getString("cost")%></td>
                          <td><%=r.getString("date")%></td>
                          <td><a href="ViewVehicles.jsp?id=<%=r.getString("id")%>">Update</a></td>
                      </tr>
                      <%
                  }
              }catch(Exception e){
                  out.println(e);
}%>
              
          </table>
     
      </center>

    </div>
    <div id="column">
     <%String id=request.getParameter("id");
     if(id!=null){%>
     <center>
         <h3>Update Details</h3>
         <table>
             <%try{
              ResultSet r=Queries.getExecuteQuery("select * from vehicle where id='"+id+"'");
              if(r.next()){
             %>
             <form action="UpdateAction.jsp" method="post">
             <table>
             <tr><th>Vehicle ID</th><td><input type="text" name="id" value="<%=r.getString("id")%>" readonly=""></td></tr>
             <tr><th>Vehicle Name</th><td><input type="text" name="vname" value="<%=r.getString("name")%>" required=""></td></tr>
             <tr><th>Company</th><td><input type="text" name="company" value="<%=r.getString("company")%>" required=""></td></tr>
             <tr><th>Milage</th><td><input type="text" name="milage" value="<%=r.getString("milage")%>" required=""></td></tr>
             <tr><th>Capacity</th><td><input type="text" name="capacity" value="<%=r.getString("capacity")%>" required=""></td></tr>
             <tr><th>Cost</th><td><input type="text" name="cost" value="<%=r.getString("cost")%>" required=""></td></tr>
             <tr><th></th><td><input type="submit" value="Update"></td></tr>
         </table>
     </form>
             <%}
}catch(Exception e){
System.out.println(e);
}
}%>
         </table>
     </center>
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
