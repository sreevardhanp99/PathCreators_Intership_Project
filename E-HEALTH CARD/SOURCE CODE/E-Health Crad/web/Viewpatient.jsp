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
                color:goldenrod;
                height:40px;
            }
            table tr td{
                background: whitesmoke;
                color:green;
                height:30px;
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
                    <center>VIEW PATIENT</center>
              
                                <table border="1">
                                    <tr>
                                        <th>HOSPITAL</th>
                                        <th>EMAIL ID</th>
                                        <th>MOBILE</th>
                                       
                                        <th>ADDRESS</th>
                                         <th>STATUS</th>
                                    </tr>
                                    <%String qury="select * from ureg";
                                   try{
                                 ResultSet r=Queries.getExecuteQuery(qury);
                                 while(r.next()){
                                    String status=r.getString("status");
                                    String id=r.getString("id");%>
                                 <tr>
                                    <td><center><%=r.getString("hospital")%></center></td>
                                     <td><center><%=r.getString("email")%></center></td>
                                     <td><center><%=r.getString("mobile")%></center></td>
                               
                                <td><center><%=r.getString("address")%></center></td>
                                     <%if(status.equals("waiting")){%>
                                     <td><center><a href="Activate_Patient.jsp?id=<%=id%>">Activate</a></center></tD>  
                                    <% }else{
%>
                                     <td><center><font color="#32CD32"><%=status%></font></center></tD>  
                                    <%
}%>
                                     
                                 </tr>
                                 <%
                                     
                                 }
                                       
}catch(Exception e){
   out.println(e); 
}%>
                                </table>
                            
                         
                              
                            </center>
    </center>
            </p>
            
        </div>
    </body>
</html>
