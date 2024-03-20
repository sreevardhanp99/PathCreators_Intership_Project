<%@page import="com.dbcon.Queries"%>
<%
String id=request.getParameter("id");
try{
   String query="update ureg set status='activated' where id='"+id+"'"; 
   int i=Queries.getExecuteUpdate(query);
   if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Successfully Activated");
        window.location="Viewpatient.jsp";
        </script>
    <%
   }else{
%>
    <script type="text/javascript">
        window.alert("Failed To Activate");
        window.location="Viewpatient.jsp";
        </script>
    <%
}
}catch(Exception e){
   out.println(e); 
}


%>