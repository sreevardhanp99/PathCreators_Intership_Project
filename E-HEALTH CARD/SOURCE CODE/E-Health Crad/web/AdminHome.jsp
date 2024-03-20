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
                <li><a href="AdminHome.jsp">Home</a></li>
                <li><a href="AddHsp.jsp">Add Hospital</a></li>
                <li><a href="Viewdoctor.jsp">View Doctor</a></li>
                <li><a href="Viewpatient.jsp">View Patient</a></li>
                <li><a href="Healthcard.jsp">View Health Cards</a></li>
                <li><a href="admin.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="abstract">
            <p align="justify">
                <center>
                    <center>WELCOME TO ADMIN HOME</center>
    </center>
            </p>
            
        </div>
    </body>
</html>
