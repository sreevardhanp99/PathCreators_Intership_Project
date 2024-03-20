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
  
 String fname=request.getParameter("fname");
           String lname=request.getParameter("lname");
           String email=request.getParameter("email");
           String mobile=request.getParameter("mobile");
           String gender=request.getParameter("gender");
           String aadhar=request.getParameter("aadhaar");
           String address=request.getParameter("address");
            String pincode=request.getParameter("pincode");
           String qualification=request.getParameter("qualification");
           String specialization=request.getParameter("specialization");
           String username=request.getParameter("username");
           String password=request.getParameter("password");
           
           try{
              Connection con=DBCon.getCon();
              Statement pst=con.createStatement();
              ResultSet r=pst.executeQuery("select count(*) from dreg where email='"+email+"'");
              int count=0;
              while(r.next()){
                count=r.getInt(1);  
              }
              if(count==0){
              
           PreparedStatement st=con.prepareStatement("insert into dreg values(null,?,?,?,?,?,?,?,?,?,?,?,?,?,'waiting')");
          
           st.setString(1,hospital);
           st.setString(2,fname);
           st.setString(3,lname);
           st.setString(4,email);
           st.setString(5,mobile);
           st.setString(6,gender);
             st.setString(7,aadhar);
          st.setString(8,address);
           st.setString(9,pincode);
           st.setString(10,qualification);
           st.setString(11,specialization);
             st.setString(12,username);
             st.setString(13,password);
           int i=st.executeUpdate();
           if(i>0){
               response.sendRedirect("dregister.jsp?msg=success");
           }else{
            response.sendRedirect("dregister.jsp?msg=failed");   
           }
              }else{
                response.sendRedirect("dregister.jsp?msg=email already exist");      
              }
           }catch(Exception e){
             out.println(e);  
           }


%>