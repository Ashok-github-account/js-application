
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
          <li ><a href="UserHome.jsp">Home</a></li>
       <li><a href="C_ViewVehicles.jsp">View Vehicles</a></li>
        <li><a href="C_BookedDetails.jsp">Reserved Details</a></li>
        <li class="active"><a href="C_Feedback.jsp">FeedBack</a></li>
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
        
      <h2 style="margin-bottom: 100px;">Your Feedback</h2>
       <center>
     
         <form action="FeedbackAction.jsp" method="post">
         <table>
           
             <tr><th>Write</th><td><textarea cols="50" rows="10" name="feedback" required></textarea></td></tr>
             
             <tr><th></th><td><input type="submit" value="SUBMIT"></td></tr>
         </table>
         </form>
        
      </center>

    </div>
    <div id="column">
        
     <center>
         <h3>Feedback Status</h3>
          <table>
              <tr>
                  <th>Your Feedback</th>
                  <th>Date</th>
                  <th>Reply</th>
                 
              </tr>
              <%try{
                  String query="select * from feedback where userid='"+id+"'";
                  ResultSet r=Queries.getExecuteQuery(query);
                  while(r.next()){
                      %>
                      <tr>
                          <td><%=r.getString("feedback")%></td>
                          <td><%=r.getString("date")%></td>
                          <td><%=r.getString("reply")%></td>
                                  </tr>
                      <%
                  }
              }catch(Exception e){
                  out.println(e);
}%>
              
          </table>
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
