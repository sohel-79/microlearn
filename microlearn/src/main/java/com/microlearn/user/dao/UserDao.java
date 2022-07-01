package com.microlearn.user.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
	
	static String url = "jdbc:postgresql://localhost/microlearn";
	static String user = "postgres";
	static String pass = "root";
	static String login_verfiy = "select * from userinfo where uname=? and pass=?";
	static String username_availability = "select * from userinfo where uname=?";
	static String email_availability = "select * from userinfo where email=?";
	static String register_user = "insert into userinfo(uname, email, name, pass) values(?,?,?,?)";


	
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("org.postgresql.Driver");  
	        con= DriverManager.getConnection(url,user,pass);  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	public static boolean login(String uname, String password)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(login_verfiy);
			ps.setString(1, uname);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) 
			{
				return true;	
			}
			
		}
		catch(Exception e) {System.out.println(e);}
		return false;
	}
	
	
	public static boolean username(String uname)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(username_availability);
			ps.setString(1, uname);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) 
			{
				return true;	
			}
			
		}
		catch(Exception e) {System.out.println(e);}
		
				return false;
	}
	
	public static boolean email(String email)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(email_availability);
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) 
			{
				return true;	
			}
			
		}
		catch(Exception e) {System.out.println(e);}
		
				return false;
	}

	public static boolean register(String uname, String email, String password, String name)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(register_user);
			ps.setString(1, uname);
			ps.setString(2, email);
			ps.setString(3, name);
			ps.setString(4, password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) 
			{
				return true;	
			}
			
		}
		catch(Exception e) {System.out.println(e);}
		
				return false;
	}
	
	
	
		
}
