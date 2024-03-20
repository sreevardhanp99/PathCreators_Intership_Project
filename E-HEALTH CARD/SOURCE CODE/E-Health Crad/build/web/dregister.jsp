<%-- 
    Document   : doctor
    Created on : 23 Feb, 2019, 4:27:13 PM
    Author     : VENKAT
--%>

<%@page import="java.sql.*"%>
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
                height: 750px;
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
            <center><h2>Welcome to Doctor Registration</h2></center>
            <table align="center">
                <form name="reg" action="dregdb.jsp" method="post">
                 
               <table cellpadding="10px" align="left">
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

                   <tr>
                       <td>
                           First Name
                       </td>
                       <td><input type="text" name="fname" required=""></td>
                   </tr>
                    <tr>
                       <td>
                           Last Name
                       </td>
                       <td><input type="text" name="lname" required=""></td>
                   </tr>
                   <tr>
                       <td>
                           Email ID 
                       </td>
                       <td><input type="text" name="email" required=""></td>
                   </tr>
                    <tr>
                       <td>
                           Mobile Number 
                       </td>
                       <td><input type="text" name="mobile" required=""></td>
                   </tr>
                   <tr>
                       <td>
                           Gender 
                       </td>
                       <td><select  name="gender" required="">
                               <option value="Male">Male</option>
                                 <option value="FeMale">FeMale</option>
                                   <option value="Others">Others</option>
                           </select>
                       </td>
                       <tr>
                       <td>
                           Aadhaar Number 
                       </td>
                       <td><input type="text" name="aadhaar" required=""></td>
                   </tr>
                   </tr>
                   <tr>
                       <td>Address</td>
                       <td><textarea rows="5" cols="21" name="address" required=""></textarea></td>
                   </tr>
                   <td>Pincode</td><td><input type="text" name="pincode"></td>
                   <tr>
                       </tr>
                   <td>Qualification</td><td><input type="text" name="qualification"></td>
                   <tr>
                       
                        </tr>
                   <td>Specialization</td><td><select  name="specialization">
                           <option value='Allergists/Immunologists'>Allergists/Immunologists </option>
                       <option value='Anesthesiologists'>Anesthesiologists</option>
                       <option value='Cardiologists'>Cardiologists</option>
                       <option value='Colon_and_Rectal_Surgeons'>Colon and Rectal Surgeons</option>
                       <option value='Dermatologists'>Dermatologists</option>
                       <option value='Endocrinologists'>Endocrinologists</option>
                       <option value='Gastroenterologists'>Gastroenterologists</option>
                       <option value='Geriatric_Medicine_Specialists'>Geriatric Medicine Specialists</option>
                       <option value='Hematologists'>Hematologists</option>
                       <option value='Hospice_and_Palliative_Medicine_Specialists'>Hospice and Palliative Medicine Specialists</option>
                       <option value='Infectious_Disease_Specialists'>Infectious Disease Specialists</option>
                       <option value='Internists'>Internists</option>
                       <option value='Nephrologists'>Nephrologists</option>
                       <option value='Obstetricians_and_Gynecologists'>Obstetricians and Gynecologists</option>
                       <option value='Oncologists'>Oncologists</option>
                       <option value='Ophthalmologists'>Ophthalmologists</option>
                       <option value='Osteopaths'>Osteopaths</option>
                       <option value='Pathologist'>Pathologist</option>
                       <option value='Pediatrician'>Pediatrician</option>
                       <option value='Podiatrist'>Podiatrist</option>
                       <option value='Plastic Surgeon'>Plastic Surgeon</option>
                       <option value='Psychiatrist'>Psychiatrist</option>
                       <option value='Pulmonary_Medicine_Physician'>Pulmonary Medicine Physician</option>
                       <option value='Radiation_Onconlogist'>Radiation Onconlogist</option>
                       <option value='Diagnostic_Radiologist'>Diagnostic Radiologist</option>
                         <option value='Rheumatologist'>Rheumatologist</option>
                           <option value='Urologist'>Urologist</option>
                       
                       
                       
                       </select>
                   </td>
                   <tr>
                   <tr> <td>UserName</td><td><input type="text" name="username" required></td> </tr>
                   
                   <tr> <td>Password</td><td><input type="password" name="password" required></td> </tr>
                   
                   <tr>
                       <td>
                           <input type="submit" value="Register">
                       </td>
                       <td><input type="Reset"></td>
                   </tr>
            </table>
            <br>
          
            <center> <p>Already  Doctor <a href="doctor.jsp">Login</a></p></center>
        </div>
    </body>
</html>
