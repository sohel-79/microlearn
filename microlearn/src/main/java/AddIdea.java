

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class AddIdea
 */
@WebServlet("/AddIdea")
public class AddIdea extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddIdea() {
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
     
	
			ps = con.prepareStatement("select * from books where author=? and bookname=?");
	
			ps.setString(1, author);
   
			ps.setString(2, bookname);
			
			
			// TODO Auto-generated catch block
			int bookid = 0;
			ResultSet rs= ps.executeQuery();
			while(rs.next())
			{
			bookid=rs.getInt("bookid");
			
			
			}
			s.setAttribute("bookid", bookid);
			System.out.print(bookid);
			response.sendRedirect("AddProcess.jsp");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			out.print("Error");
		}
      
	}

}
