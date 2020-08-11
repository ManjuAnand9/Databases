package com.java;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class servy
 */
public class servy extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private Helper helpy = new Helper();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public servy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String lastnameLetters = request.getParameter("LastName");
		System.out.println("hi last name---"+lastnameLetters);
		
		Connection conn = Helper.getConnection();
		
	      try {
			Statement stmt2 	= conn.createStatement();
			stmt2.executeUpdate("use got_hospital;");
			Statement stmt 	= conn.createStatement();

		      String sql = "select * from patients where Patient_LastName like '%"+lastnameLetters+"%'";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		     int d =  helpy.dumpData(rs, response.getWriter());
		      rs.close();
			//conn.close();
	      }
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			}
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		/*Connection conn = getConnection();
	
	      try {
			Statement stmt2 	= conn.createStatement();
			stmt2.executeUpdate("use got_hospital;");
			Statement stmt 	= conn.createStatement();

		      String sql = "select * from patients LIMIT 5;";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		     int d =  dumpData(rs, response.getWriter());
		      rs.close();
			conn.close();
			
	      }
		 catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
			HttpSession session = request.getSession();
			session.setAttribute("role", "clerk");
			Cookie loginCookie = new Cookie("role","nurse");
			//setting cookie to expiry in 30 mins
			loginCookie.setMaxAge(30*60);
			response.addCookie(loginCookie);
	      response.sendRedirect("HomePage.html");
	      response.getWriter().close();
	      

	}

	

}
