


<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{
    String id=request.getParameter("id");
   
    String reply=request.getParameter("reply");
  
    String query="update feedback set reply='"+reply+"' where id='"+id+"'";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Successfully Replyed ..!!");
          window.location="ViewFeedback.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Failed to Reply..!!");
          window.location="ViewFeedback.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>