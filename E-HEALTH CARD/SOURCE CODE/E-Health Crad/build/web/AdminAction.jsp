<%-- 
    Document   : ADMINAction
    Created on : Mar 18, 2019, 10:55:53 AM
    Author     : Acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String name=request.getParameter("uname");
String pwd=request.getParameter("pwd");
if(name.equalsIgnoreCase("Admin")&&pwd.equalsIgnoreCase("Admin")){
response.sendRedirect("AdminHome.jsp?msg=success");    
}else{
 response.sendRedirect("Admin.jsp?msg=failed");    
}
%>