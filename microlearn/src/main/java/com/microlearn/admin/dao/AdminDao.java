package com.microlearn.admin.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.microlearn.author.bean.Author;
import com.microlearn.author.dao.*;
import com.microlearn.books.bean.books;

@SuppressWarnings("unused")
public class AdminDao {
	
	static String url = "jdbc:postgresql://localhost/microlearn";
	static String user = "postgres";
	static String pass = "root";
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("org.postgresql.Driver");  
	        con= DriverManager.getConnection(url,user,pass);  
	    }catch(Exception e){System.out.println(e);}  
	    return con;  
	}  

	Author a = new Author();  
	public static List<Author> getAllRecords(){  
	    List<Author> list=new ArrayList<Author>();  
	    
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select * from author");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	Author a=new Author();
	        	a.setAuthorid(rs.getString("authorid"));
	        	a.setEmail(rs.getString("email"));
	        	a.setName(rs.getString("name"));
	        	a.setPassword(rs.getString("pass"));
	        	a.setIsallowed(rs.getBoolean("isallowed"));
	            list.add(a);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	
}
	
	
	
	
	books b = new books();  
	public static List<books> getBooks(){  
	    List<books> list=new ArrayList<books>();  
	    
	    try{  
	        Connection con=getConnection();  
	        PreparedStatement ps=con.prepareStatement("select bookname ,author , bookid from books");  
	        ResultSet rs=ps.executeQuery();  
	        while(rs.next()){  
	        	
	        	books b = new books();
	        	b.setBookname(rs.getString("bookname"));
	        	b.setAuthor(rs.getString("author"));
	        	b.setBookid(rs.getInt("bookid"));
	            list.add(b);  
	        }  
	    }catch(Exception e){System.out.println(e);}  
	    return list;  
	
}
	
	
	
	public static boolean update(Author a){  
	    int status=0;  
	    try{  
	        Connection con=getConnection(); 
	        System.out.println(a.getAuthorid());
	        PreparedStatement ps=con.prepareStatement("update author set isallowed=true where authorid=?"); 
	        ps.setString(1, a.getAuthorid());  
	        status=ps.executeUpdate(); 
	        return true;
	    }catch(Exception e){System.out.println(e);}  
	    return false;  
	}  
	
	
}