
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.Format"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.dbcon.Queries"%>
<%
    Calendar date = Calendar.getInstance();
    date.setTime(new Date());
    Format f = new SimpleDateFormat("dd-MMMM-yyyy");
    System.out.println(f.format(date.getTime()));
    date.add(Calendar.YEAR,2);
    String d=f.format(date.getTime());
    
String id=request.getParameter("id");
try{
   String query="update healthcard set status='accepted',adate=now(),edate='"+d+"' where pid='"+id+"'"; 
   int i=Queries.getExecuteUpdate(query);
   if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Health card accepted for 2 years");
        window.location="CardRequest.jsp";
        </script>
    <%
   }else{
%>
    <script type="text/javascript">
        window.alert("Failed to accept health card");
        window.location="CardRequest.jsp";
        </script>
    <%
}
}catch(Exception e){
   out.println(e); 
}


%>