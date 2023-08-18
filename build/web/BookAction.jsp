

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String cid=request.getParameter("cid");
    String cost=request.getParameter("cost");
    String days=request.getParameter("days");
    String cno=request.getParameter("cno");
    String edate=request.getParameter("edate");
    String cvv=request.getParameter("cvv");
    String tcost=request.getParameter("tcost");
    
    
    
  String id=(String)session.getAttribute("id");
  String username=(String)session.getAttribute("uname");
  
    String query="insert into booking values(null,'"+id+"','"+username+"','"+cid+"','"+cost+"','"+days+"','"+tcost+"','"+cno+"','"+edate+"','"+cvv+"',now(),'waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Booking Done..!!");
          window.location="C_ViewVehicles.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Booking Failed..!!");
          window.location="C_ViewVehicles.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>