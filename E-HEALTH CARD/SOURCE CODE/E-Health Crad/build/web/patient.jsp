<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                height: 700px;
                margin: 150px;
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
            <p align="justify">
                <center>
    <form action="pLoginAction.jsp" method="post">  
        <table>
            <tr><h2>Patient Login Here</h2></tr>
            <tr><th>UserName</th><td><input type="text" name="uname" required=""></td></tr>
            <tr><th>Password</th><td><input type="password" name="pwd" required=""></td></tr>
            <tr><th></th><td><input type="submit" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Reset"></tD></tr>
            <tr><th></th><td>Don't Have Account ?&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a href="Pregister.jsp">Register</a></td></tr>
            
        </table>
    
    </form>
    </center>
            </p>
            
        </div>
    </body>
</html>
