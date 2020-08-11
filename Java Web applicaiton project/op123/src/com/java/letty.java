package com.java;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class letty
 */
public class letty extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Helper helpy = new Helper();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public letty() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");
		    PrintWriter out = response.getWriter();
		    out.println("yourvalue");
		    System.out.println("yourvalue");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String PID = request.getParameter("pid");
		System.out.println("patient ID---"+PID);
		
		Connection conn = Helper.getConnection();
		
	      try {
			Statement stmt2 	= conn.createStatement();
			stmt2.executeUpdate("use got_hospital;");
			Statement stmt 	= conn.createStatement();

		      String sql = "select * from visits where patient_ID='"+PID+"'";
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

}
