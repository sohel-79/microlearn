package com.microlearn.author.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AuthorDao {

	static String url = "jdbc:postgresql://localhost/microlearn";
	static String user = "postgres";
	static String pass = "root";
	static String login_verfiy = "select * from author where authorid=? and pass=? and isallowed=true";
	static String username_availability = "select * from author where authorid=?";
	static String email_availability = "select * from author where email=?";
	static String register_author = "insert into author(authorid, email, name, pass) values(?,?,?,?)";


	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("org.postgresql.Driver");  
	        con= DriverManager.getConnection(url,user,pass);  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	
	
	public static boolean login(String authorid, String password)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(login_verfiy);
			ps.setString(1, authorid);
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
	
	
	public static boolean username(String authorid)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(username_availability);
			ps.setString(1, authorid);
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

	public static boolean register(String authorid, String email, String password, String name)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(register_author);
			ps.setString(1, authorid);
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
