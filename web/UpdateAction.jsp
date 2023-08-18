


<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String id=request.getParameter("id");
    String vname=request.getParameter("vname");
    String company=request.getParameter("company");
    String milage=request.getParameter("milage");
    String capacity=request.getParameter("capacity");
    String cost=request.getParameter("cost");
    
    
  
    String query="update vehicle set name='"+vname+"',company='"+company+"',milage='"+milage+"',capacity='"+capacity+"',cost='"+cost+"',date=now() where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Update Done..!!");
          window.location="ViewVehicles.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Updating Failed..!!");
          window.location="ViewVehicles.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>