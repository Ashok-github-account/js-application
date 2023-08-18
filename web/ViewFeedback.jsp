
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
        <li><a href="BookedDetails.jsp">Rental Process</a></li>
        <li class="active"><a href="ViewFeedback.jsp">View Feedback</a></li>
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
                  <th>Feedback</th>
                  <th>Date</th>
                  <th>Reply</th>
                 
              </tr>
              <%try{
                  String query="select * from feedback";
                  ResultSet r=Queries.getExecuteQuery(query);
                  while(r.next()){
                    String s=r.getString("reply");
                      %>
                      <tr>
                           <td><%=r.getString("username")%></td>
                          <td><%=r.getString("feedback")%></td>
                          <td><%=r.getString("date")%></td>
                          
                          
                          <%if(s.equals("waiting")){%>
                          <td><a href="ViewFeedback.jsp?id=<%=r.getString("id")%>">Reply</a></td>
                          <%}else{%>
                          <td><%=r.getString("reply")%></td>
                          <%}%>
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
         <h3>Reply Feedback</h3>
         <table>
            
             <form action="ReplyAction.jsp" method="post">
             <table>
             <tr><th> ID</th><td><input type="text" name="id" value="<%=id%>" readonly=""></td></tr>
             <tr><th>Write Reply</th><td><textarea cols="30" rows="10" name="reply" required=""></textarea></td></tr>
                <tr><th></th><td><input type="submit" value="Reply"></td></tr>
         </table>
     </form>
            
         </table>
     </center>
             <%}%>
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
