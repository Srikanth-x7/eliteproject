package controllers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import models.Sign_upModel;

public class Sign_upController {

	String name,pass,email,phone;
	String dbUrl="jdbc:mysql://localhost:3306/mkce";
    String dbUname="root";
    String dbPassword="";
    String dbDriver="com.mysql.cj.jdbc.Driver";
    Sign_upModel rm;
	public Sign_upController(Sign_upModel rm){
		this.rm=rm;
	}
	public void toStore(){
		Connection con = null;
   		try{
   			Class.forName(dbDriver);  //class not found exception
 			con = DriverManager.getConnection(dbUrl,dbUname,dbPassword);   //sql Exception
 			String sql = "insert into data (username,password,email,phonenumber)"
 					+ "values('"+rm.getName()+"','"+rm.getPass()+"','"+rm.getEmail()+"','"+rm.getPhone()+"')";
 			Statement s = con.createStatement();
 			s.execute(sql);
 		   	con.close();
		 }catch(Exception e){      
			e.printStackTrace();
		 }
	
	
	
	}

}
