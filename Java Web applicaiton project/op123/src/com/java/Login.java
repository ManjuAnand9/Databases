package com.java;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/loginServlet")
public class Login extends HttpServlet {
 private Helper helpy=new Helper();
	private static final long serialVersionUID = -4964401109829424658L;

	protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
         boolean result=false;
        // read form fields
        String username = request.getParameter("uname");
        String password = request.getParameter("psw");
        
    	Connection conn = Helper.getNewConnection();
		
	      try {
			Statement stmt2 	= conn.createStatement();
			stmt2.executeUpdate("use got_hospital_opc;");
			Statement stmt 	= conn.createStatement();
			String query="select * from users where UserName='"+username+"'"+" AND password='"+password+"'";
			 ResultSet rs = stmt.executeQuery(query);
			 if(rs!=null) {
				 if(rs.next()) {
					 stmt2.executeUpdate("update users set UserName='"+username+"'"+"where Password='CURRENT' AND Role='CURRENT'");
					 stmt2.executeUpdate("commit;");
					 String DBRole = rs.getString("Role");
					 Cookie loginCookie = new Cookie("role",DBRole);
						//setting cookie to expiry in 30 mins
						loginCookie.setMaxAge(30*60);
						response.addCookie(loginCookie);
					 HttpSession session = request.getSession();
			            session.setAttribute("role", DBRole);
			            Helper.setRoleConnection(DBRole);
			          response.sendRedirect("HomePage.html");
					 System.out.println("User found in DB");
					 result=true;
					 
				 }
				 else {
					 response.sendRedirect("AccessDenied.html");
					 System.out.println("Access Denied");
					 result=false;	 }
			 }
			 
			 rs.close();
			 //stmt2.close();
	      }
	      catch(SQLException e) {
	    	  System.err.println(e.getMessage());
	    	  }
	      
	      
	      
	      }
			 
        
 
	
	
 
}
