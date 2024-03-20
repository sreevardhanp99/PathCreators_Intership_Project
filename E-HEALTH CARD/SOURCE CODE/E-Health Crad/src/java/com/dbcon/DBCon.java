/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dbcon;
import java.sql.*;
/**
 *
 * @author Acer
 */
public class DBCon {
    public static Connection con=null;
    public static Connection getCon(){
    try{
    Class.forName("com.mysql.jdbc.Driver");
 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/e_health","root","root");
    
}catch(Exception e){
    System.out.println(e);
    
}
    return con;
    }
}
