<%@page import="com.dbcon.Queries"%>
<%@page import="java.sql.ResultSet"%>
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
            table tr th{
                background: red;
                color:yellow;
                height:40px;
            }
            table tr td{
                background:whitesmoke;
                color:goldenrod;
                height:30px;
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
                  
                     <center>HEALTH CARD STATUS</center>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <table border="1">
                                    <tr>
                                        <th>HOSPITAL</th>
                                        <th>REQUESTER EMAIL</th>
                                        
                                        <th>DESCRIPTION</th>
                                        <th>REQUEST DATE</th>
                                        <th>ACCEPT DATE</th>
                                        <th>EXPIRY DATE</th>
                                        <th>STATUS</th>
                                       
                                    </tr>
                                    <%String qury="select * from healthcard where hospital='"+hospital+"'";
                                   try{
                                 ResultSet r=Queries.getExecuteQuery(qury);
                                 while(r.next()){
                                    String status=r.getString("status");
                                    String pid=r.getString("pid");%>
                                 <tr>
                                    <td><center><%=r.getString("hospital")%></center></td>
                                     <td><center><%=r.getString("email")%></center></td>
                                     <td><center><%=r.getString("desc")%></center></td>
                                <td><center><%=r.getString("rdate")%></center></td>
                          <td><center><%=r.getString("adate")%></center></td>
                                <td><center><%=r.getString("edate")%></center></td>
                                    
                                     <td><center><font color="#32CD32"><%=status%></font></center></tD>  
                                   
                                     
                                 </tr>
                                 <%
                                     
                                 }
                                       
}catch(Exception e){
   out.println(e); 
}%>
                                </table>
    </center>
            </p>
            
        </div>
    </body>
</html>
