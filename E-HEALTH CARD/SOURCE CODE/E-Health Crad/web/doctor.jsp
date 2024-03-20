<%-- 
    Document   : doctor
    Created on : 23 Feb, 2019, 4:27:13 PM
    Author     : VENKAT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>E-Health Card</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            body{
                background-image:url(images/thumbnail-2.jpg);
                background-repeat:no-repeat;
                background-size:auto;
            }
            #title
            {
                width:100%;
                height: 40px;
                background-color: #00ff55;
                text-align: center;
                font-size: 25px;
            }
            .menu
            {
                width:100%;
                height: 60px;
                background-color:white;
                
            }
          ul li{
                list-style: none;
                float: left;
                padding: 20px;
            }
            ul li a{
                text-decoration: none;
               font-size: 30px;
               text-decoration: blink;
               color: blue;
            }
            #abstract
            {
                width:auto;
                height: 400px;
                margin: 150px;
                background-color: lightgrey;
                color: white;
                font-size: 20px;
            }
            </style>
    </head>
    <body>
        <div id="title">E-Health Card</div>
        <div class="menu">
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="doctor.jsp">Doctor</a></li>
                <li><a href="patient.jsp">Patient</a></li>
                <li><a href="admin.jsp">Admin</a></li>
            </ul>
        </div>
        <div id="abstract">
            <form action="DAction.jsp" method="post">
            <center><h2>Welcome to Doctor Login</h2></center>
            <table align="center">
                <tr>
                    <td>Username</td><td><input type="text" name="uname"></td>
                </tr>
                 <tr>
                    <td>Password</td><td><input type="password" name="pwd"></td>
                </tr>
                <tr><td><input type="submit" value="Login"></td><td><input type="reset"></td></tr>
            </table>
            <br>
            </form>
            <center> <p>New Doctor <a href="dregister.jsp">Registration</a></p></center>
        </div>
    </body>
</html>
