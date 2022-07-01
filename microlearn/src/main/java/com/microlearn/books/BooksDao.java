package com.microlearn.books;

import java.io.File;



import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;


/**
 * Servlet implementation class addbook
 */
@SuppressWarnings("unused")
@WebServlet("/BooksDao")
@MultipartConfig
public class BooksDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BooksDao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s =request.getSession();
		PrintWriter out = response.getWriter();
		
		String bookname = request.getParameter("bookname"); 
		String author = (String) s.getAttribute("authorid");
		Part filePart = request.getPart("bookimg"); // Retrieves <input type="file" name="file">
		InputStream fileContent = filePart.getInputStream();
		byte[] bytes = IOUtils.toByteArray(fileContent);	
		String encoded = Base64.getEncoder().encodeToString(bytes);
		String base = "data:image/png;base64,";
		base=base.concat(encoded);
		System.out.println(encoded);
	    System.out.print(bookname);
	    System.out.print(author);
	    System.out.print(filePart);
	    System.out.println(filePart.getName());
        System.out.println(filePart.getSize());
        System.out.println(filePart.getContentType());
        
        Connection con=null; 
    	PreparedStatement ps = null; 
    	
    	String url="jdbc:postgresql://localhost/microlearn"; 
    	String user = "postgres";
    	String pass = "root";
    	
    	
    	try {
			DriverManager.registerDriver(new org.postgresql.Driver());
			//Getting the connection
		
			con = DriverManager.getConnection(url, user , pass);
        System.out.println("Connection established......");
     
	
			ps = con.prepareStatement("INSERT INTO books (bookname, author,image) VALUES(?,?,?)");
	
	
			ps.setString(1, bookname);
	
       
			ps.setString(2, author);
	
   
			ps.setString(3, base);
			
			
			// TODO Auto-generated catch block
		
			ps.execute();
			
			out.print("<script>");
			out.print("alert('Book Added Successfully!!!');");
			out.print("window.location.href = 'author/AuthorHome.jsp'");
			out.print("</script>");
			
			//
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("<script>");
			out.print("alert('Some Eror Occured');");
			out.print("window.location.href = 'author/AuthorHome.jsp'");
			out.print("</script>");
			//response.sendRedirect("author/AuthorHome.jsp");
		}
      
    	
	}
    	
 
        
}


