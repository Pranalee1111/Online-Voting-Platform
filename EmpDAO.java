package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EmpDAO{
	
	
	   public static  Connection getconnection() {
		   Connection con=null;
		       try {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost/demodb","root","root");	
				} catch (Exception e) {
				e.printStackTrace();
			}
		     return con;
	   }
	   
	   
	   public static int register(Person e) {
		   
		   int status=0;
		   
		  
		    try {
		    	Connection con=EmpDAO.getconnection();
				PreparedStatement ps= con.prepareStatement("insert into emp2(name,password,email,state,country) values(?,?,?,?,?)");
			
		        ps.setString(1, e.getName());
		        ps.setString(2, e.getPassword());
		        ps.setString(3,e.getEmail());
		        ps.setString(4,e.getState());
		        ps.setString(5,e.getCountry());
		        
		        status =ps.executeUpdate();
		    } catch (SQLException e1) {
		    	e1.printStackTrace();
			} 
		   return status; 
	   }
	   

	   
	   public static boolean isValidUser(String email,String password) {
		   
		   boolean isValid=false;
		   try {
			   Connection con=EmpDAO.getconnection();
			PreparedStatement ps= con.prepareStatement("SELECT * FROM emp2 WHERE email=? AND password=?");
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
                isValid = true;
            }else
            	isValid=false;
		   
		   } catch (SQLException e1) {
			
			e1.printStackTrace();
		}
 
		   
		   
		   return isValid;
	   }
	   
	   
	   public static void saveVote(String position, String candidate) {
	        try {
	        	Connection con=EmpDAO.getconnection();
				PreparedStatement ps= con.prepareStatement("UPDATE votes SET count = count+1 WHERE position = ? AND candidate = ?");
	          
	            ps.setString(1, position);
	            ps.setString(2, candidate);

	            ps.executeUpdate();

	            con.close();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	    }


}
