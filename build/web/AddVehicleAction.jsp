<%-- 
    Document   : OwnerRegAction
    Created on : 29 Sep, 2020, 5:52:17 PM
    Author     : KishanVenky
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String vname=request.getParameter("vname");
    String company=request.getParameter("company");
    String milage=request.getParameter("milage");
    String cost=request.getParameter("cost");
    String capacity=request.getParameter("capacity");
    
    String query="insert into vehicle values(null,'"+vname+"','"+company+"','"+milage+"','"+capacity+"','"+cost+"',now())";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
  
%>
      <script type='text/javascript'>
          window.alert("Added Successful...!!");
          window.location="AddVehicle.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert("Adding Failed..!!");
          window.location="AddVehicle.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>