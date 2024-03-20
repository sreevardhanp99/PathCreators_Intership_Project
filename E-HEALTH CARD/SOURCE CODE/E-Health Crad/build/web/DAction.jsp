<%-- 
    Document   : pLoginAction
    Created on : Mar 20, 2019, 11:15:44 AM
    Author     : Acer
--%>

<%@page import="com.dbcon.Queries"%>
<%@page import="java.sql.ResultSet"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% try{
            String uname=request.getParameter("uname");
            String pwd=request.getParameter("pwd");
            String query="select * from dreg where username='"+uname+"'and password='"+pwd+"'";
           ResultSet rs=Queries.getExecuteQuery(query);
          if(rs.next()){
              String status=rs.getString("status");
              if(status.equals("waiting")){
                response.sendRedirect("doctor.jsp?msg=Your not authorized by the Admin"); 
              }else{
             session.setAttribute("email",rs.getString("email"));
              session.setAttribute("id",rs.getString("id"));
               session.setAttribute("hospital",rs.getString("hospital"));
               
              response.sendRedirect("Doctor_Home.jsp?msg=success");
           }
          }else{
              response.sendRedirect("doctor.jsp?msg=Login Failed Check Username/password");
          }
        }catch(Exception e){
            out.println(e);
        }%>
        