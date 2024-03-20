<%-- 
    Document   : Regaction
    Created on : Mar 12, 2019, 9:42:27 PM
    Author     : Acer
--%>

<%@page import="com.dbcon.DBCon"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String hospital=request.getParameter("hospital");
  
 String name=request.getParameter("name");
           String email=request.getParameter("email");
           String mobile=request.getParameter("mobile");
           String address=request.getParameter("address");
           String uname=request.getParameter("uname");
           String pass=request.getParameter("pwd");
           try{
              Connection con=DBCon.getCon();
              Statement pst=con.createStatement();
              ResultSet r=pst.executeQuery("select count(*) from ureg where email='"+email+"'");
              int count=0;
              while(r.next()){
                count=r.getInt(1);  
              }
              if(count==0){
              
           PreparedStatement st=con.prepareStatement("insert into ureg values(null,?,?,?,?,?,?,?,'waiting')");
          
           st.setString(1,name);
           st.setString(2,email);
           st.setString(3,mobile);
           st.setString(4,address);
           st.setString(5,uname);
           st.setString(6,pass);
             st.setString(7,hospital);
         
           int i=st.executeUpdate();
           if(i>0){
               response.sendRedirect("Pregister.jsp?msg=success");
           }else{
            response.sendRedirect("Pregister.jsp?msg=failed");   
           }
              }else{
                response.sendRedirect("Pregister.jsp?msg=email already exist");      
              }
           }catch(Exception e){
             out.println(e);  
           }


%>