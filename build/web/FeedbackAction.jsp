


<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String id=(String)session.getAttribute("id");
    String username=(String)session.getAttribute("uname");
try{
    String feedback=request.getParameter("feedback");
   
    
  
    String query="insert into feedback values(null,'"+id+"','"+username+"','"+feedback+"',now(),'waiting')";
    int i=Queries.getExecuteUpdate(query);
    if(i>0){
      %>
      <script type='text/javascript'>
          window.alert("Successfully Sent Feedback..!!");
          window.location="C_Feedback.jsp";
      </script>
      <%
    }else{
%>
      <script type='text/javascript'>
          window.alert("Failed to submit feedback..!!");
          window.location="C_Feedback.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>