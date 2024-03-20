<%-- 
    Document   : ApplyAction
    Created on : Mar 20, 2019, 11:30:31 AM
    Author     : Acer
--%>

<%@page import="com.dbcon.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String pid=request.getParameter("pid");
  
 String email=request.getParameter("email");
           String hospital=request.getParameter("rhsp");
           String desc=request.getParameter("desc");
          
 try{
              Connection con=DBCon.getCon();
              Statement pst=con.createStatement();
              ResultSet r=pst.executeQuery("select count(*) from healthcard where hospital='"+email+"'");
              int count=0;
              while(r.next()){
                count=r.getInt(1);  
              }
              if(count==0){
              
           PreparedStatement st=con.prepareStatement("insert into healthcard values(null,?,?,?,?,now(),'waiting','waiting','waiting')");
          
           st.setString(1,pid);
           st.setString(2,email);
           st.setString(3,hospital);
           st.setString(4,desc);
           
         
           int i=st.executeUpdate();
           if(i>0){
               response.sendRedirect("ApplyCard.jsp?msg=success");
           }else{
            response.sendRedirect("ApplyCard.jsp?msg=failed");   
           }
              }else{
                response.sendRedirect("ApplyCard.jsp?msg=Already Applied For this Hospital");      
              }
           }catch(Exception e){
             out.println(e);  
           }
           %>
           