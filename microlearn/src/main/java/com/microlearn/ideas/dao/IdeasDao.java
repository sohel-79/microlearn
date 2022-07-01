
package com.microlearn.ideas.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.microlearn.ideas.bean.Ideas;

public class IdeasDao {

	static String url = "jdbc:postgresql://localhost/microlearn";
	static String user = "postgres";
	static String pass = "root";
	static String add_idea="insert into ideas(bookid,authorid,title,description) values(?,?,?,?)";
	static String delete_idea="update ideas set isdeleted=true where id=?";
	static String edit_idea="update ideas set title=?, description=? where id=?";
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("org.postgresql.Driver");  
	        con= DriverManager.getConnection(url,user,pass);  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  
	
	
	public static boolean addIdea(int bookid, String authorid, String title, String description)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(add_idea);
			ps.setInt(1, bookid);
			ps.setString(2, authorid);
			ps.setString(3, title);
			ps.setString(4, description);
			ps.execute();
			
				return true;	
			
			
		}
		catch(Exception e) {System.out.println(e);}
		
				return false;
	}
	
	
	
	
	
	public static boolean deleteIdea(int ideaid)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(delete_idea);
			ps.setInt(1, ideaid);
			ps.execute();
			
				return true;	
			
			
		}
		catch(Exception e) {System.out.println(e);}
		
				return false;
	}


	
	public static Ideas getIdeaById(int id){  
	    Ideas i=null;  
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from ideas where id=?");  
	        ps.setInt(1,id);  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	            i=new Ideas();  
	            i.setId(rs.getInt("id"));  
	            i.setBookid(rs.getInt("bookid"));
	            i.setDescription(rs.getString("description"));  
	            i.setTitle(rs.getString("title"));
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return i;  
	}  
	
	
	public static boolean editIdea(String title, String description ,int ideaid)
	{
		try
		{
			Connection con=getConnection();  
			PreparedStatement ps= con.prepareStatement(edit_idea);
			ps.setString(1, title);
			ps.setString(2, description);
			ps.setInt(3, ideaid);
			ps.execute();
			
				return true;	
			
			
		}
		catch(Exception e) {System.out.println(e);}
		
				return false;
	}
	
}
