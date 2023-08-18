


<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String id=request.getParameter("id");
   
  
    String query="update booking set status='Rented' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Successfully Confirmed Car..!!");
          window.location="BookedDetails.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Failed to Confirm Car..!!");
          window.location="BookedDetails.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>