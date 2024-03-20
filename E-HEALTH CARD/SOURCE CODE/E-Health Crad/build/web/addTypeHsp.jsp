
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.Format"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.dbcon.Queries"%>
<%


    
String hname=request.getParameter("hname");
try{
    int count=0;
    
   String query="insert into hospital values('"+hname+"',now())"; 
   int i=Queries.getExecuteUpdate(query);
   if(i>0){
    %>
    <script type="text/javascript">
        window.alert("Hospital Added Successfully");
        window.location="AddHsp.jsp";
        </script>
    <%
   }else{
%>
    <script type="text/javascript">
        window.alert("Failed to Add Hospital");
        window.location="AddHsp.jsp";
        </script>
    <%
}
}catch(Exception e){
   out.println(e); 
}


%>