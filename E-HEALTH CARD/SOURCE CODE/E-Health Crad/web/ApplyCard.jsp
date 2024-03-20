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
                <li><a href="P_Home.jsp">Home</a></li>
                <li><a href="ApplyCard.jsp">Applay card</a></li>
                <li><a href="Cardtatus.jsp">Card Status</a></li>
               
                <li><a href="patient.jsp">Logout</a></li>
            </ul>
        </div>
        <div id="abstract">
            <p align="justify">
                <center>
                    <%String email=(String)session.getAttribute("email");
                    String id=(String)session.getAttribute("id");
                     String hospital=(String)session.getAttribute("hospital");%>
                      <%String msg=request.getParameter("msg");
               if(msg!=null){
             %>
             <font color="red"><%=msg%></font>
             <%              
}%>
 <form action="ApplyAction.jsp" method="post">  
        <table>
            <tr><h2>APPLY HEALTH CARD HERE</h2></tr>
            <tr><th>PATIENT ID</th><td><input type="text" name="pid" value="<%=id%>" readonly=""></td></tr>
            <tr><th>PATIENT EMAIL</th><td><input type="text" name="email" value="<%=email%>" readonly=""></td></tr>
            <tr><th>REGISTERED HOSPITAL</th><td><input type="text" name="rhsp" value="<%=hospital%>" readonly=""></td></tr>
            <tr><th>DESCRIPTION</th><td><textarea cols="35" rows="15" name="desc"></textarea></td></tr>
            <tr><th></th><td><input type="submit" value="Apply">&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Reset"></tD></tr>
            
            
        </table>
    
    </form>
                
                
                
                </center>
            </p>
            
        </div>
    </body>
</html>
