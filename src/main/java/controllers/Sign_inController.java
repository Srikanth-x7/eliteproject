package controllers;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class Sign_inController {

	
	String email,pass;
	String dbUrl="jdbc:mysql://localhost:3306/mkce";
    String dbUname="root";
    String dbPassword="";
    String dbDriver="com.mysql.cj.jdbc.Driver";
	public Sign_inController(String email,String pass){
		this.email=email;
		this.pass=pass;
	}
	public boolean toStore(){
		 Connection con = null;
	   		try{
	   			Class.forName(dbDriver);  //class not found exception
	 			con = DriverManager.getConnection(dbUrl,dbUname,dbPassword);   //sql Exception
	 			String sql = "select * from data where email='"+email+"' and password='"+pass+"'";	 		
	 		  
	 			Statement s = con.createStatement();
	 			ResultSet rs=s.executeQuery(sql);
	 			
	 			if(rs.next()) {
	 				System.out.println(rs.getString(1));
	 				con.close();
	 				return true;
	 			}
	 			
	 			con.close();
	 		   	
			 }catch(Exception e){      
				e.printStackTrace();
			 }
	   		return false;
		
	}
}
