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
                <li><a href="Doctor_Home.jsp">Home</a></li>
                <li><a href="CardRequest.jsp">Card Request</a></li>
                <li><a href="AllCards.jsp">No Of Cards Accepted</a></li>
               
                <li><a href="doctor.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="abstract">
            <p align="justify">
                <center>
                    <%String email=(String)session.getAttribute("email");
                    String id=(String)session.getAttribute("id");%>
                    <center>WELCOME TO <%=email%></center>
    </center>
            </p>
            
        </div>
    </body>
</html>
