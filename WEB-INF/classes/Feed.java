

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;
import java.sql.Statement;
import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.math.BigDecimal;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;

	
	
 
public class Feed extends HttpServlet{
	

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   
      String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
      String DB_URL="jdbc:mysql://localhost/eqclub";
      String USER = "root";
      String PASS = "Salai123";
   
      boolean status2=false;
	  int status5;
	 
	  String mentName=null;
	  String feed1;
	  
	  
	  HttpSession session = request.getSession();
	 	
	  String destPage = "mentordash.jsp";
      PrintWriter out = response.getWriter();	
	  response.setContentType("text/html");  
			  
      try {
		   
		 String q1 = request.getParameter("q1");
		 String q2 = request.getParameter("q2");
		 String q3 = request.getParameter("q3");
		String q4 = request.getParameter("q4");
		String q5 = request.getParameter("q5");
		String q6 = request.getParameter("q6");
		String q7 = request.getParameter("q7");
		String q8 = request.getParameter("q8");
		String rate = request.getParameter("rate");
		String q9 = request.getParameter("q9");
		
		String emailId = (String) session.getAttribute("dashBoardMail");	
		 
	     Class.forName("com.mysql.jdbc.Driver");

         Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);
		 
		 PreparedStatement ps2=conn.prepareStatement("select * from ment where email=?");  
		 ps2.setString(1,emailId);    
         
	     ResultSet rs2 = ps2.executeQuery();  
         status2 = rs2.next(); 
		 
         if(status2== true){
			   
			   mentName = rs2.getString("name");
			   
		 }  
		 
			 
		 PreparedStatement st = conn.prepareStatement("insert into Feed values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
				st.setString(1, mentName);
				st.setString(2, emailId);
				st.setString(3, q1);
				st.setString(4, q2);
				st.setString(5, q3);
				st.setString(6, q4);
				st.setString(7, q5);
				st.setString(8, q6);
				st.setString(9, q7);
				st.setString(10, q8);
				st.setString(11, rate);
				st.setString(12, q9);
				
				status5 = st.executeUpdate();
				
				if(status5 > 0){
				
				
				feed1 = "true";
			 session.setAttribute("feed1",feed1);
				
	  		response.setHeader("Location",destPage);
		      RequestDispatcher rd = request.getRequestDispatcher(destPage);
            rd.forward(request, response);
			
				}
		 	 ps2.close();
        conn.close();		
      }catch(SQLException se) {
        se.printStackTrace();
	  }catch(Exception e) {
         e.printStackTrace();
      }
	  out.close();
   }
   
}