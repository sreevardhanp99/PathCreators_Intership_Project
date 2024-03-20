
<%@page import="java.sql.*"%>
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
   <form action="Regaction.jsp" method="post">
            <center> <table style="color:green;">
                                     
                <tr><h1>PATIENT REGISTRATION  HERE</h1></tr>
                <%String msg=request.getParameter("msg");
               if(msg!=null){
             %>
             <font color="red"><%=msg%></font>
             <%              
}%>
                
                         <TR></TR> <TR></TR> <TR></TR> <TR></TR> <TR></TR> <TR></TR> <TR></TR> <TR></TR>
                                <tr><th>Hospital</tH>
                                    <td><select name="hospital" style="width:134px;">
                                            <option value="">--select--</option>
                    
    <%
              Connection con=null;
            Statement st= null;

            ResultSet rs=null;
             ResultSet rs1=null;
             ResultSet rs2=null;
              try
                  {
                      Class.forName("com.mysql.jdbc.Driver");
             con = DriverManager.getConnection("jdbc:mysql://localhost:3306/e_health","root","root");
             st = con.createStatement();
             rs=st.executeQuery("select * from hospital");
             while(rs.next())
             {
                %>
                <option value="<%=rs.getString("hospital")%>"><%=rs.getString("hospital")%></option>    
           <% 
                  }
}
             catch(Exception e)
                     {
                     out.println(e);
                     }

                         %>
                                    </select></td></tr>

                       
                                         <tr><th>Name</tH><td><input type="text" name="name" required=""></td></tr>
                             <tr><th>Email</tH><td><input type="email" name="email" required=""></td></tr>
                             <tr><th>Mobile</tH><td><input type="number" name="mobile" required=""/></td></tr>
                             <tr><th>Address</tH><td><input type="text" name="address" required=""/></td></tr>
                             <tr><th>UserName</tH><td><input type="text" name="uname" required=""></td></tr>
                             <tr><th>Password</tH><td><input type="password" name="pwd" required=""></td></tr>
                             <tr><td></td><td><input type="submit" value="REGISTER" > <input type="reset" value="RESET" ></td></tr>
                                           
                                     </table>   
            </center>
        </form>
    </center>
            </p>
            
        </div>
    </body>
</html>
