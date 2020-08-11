package com.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.Helper;

/**
 * Servlet implementation class PIDreport
 */
public class PIDreport extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Helper helpy = new Helper();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PIDreport() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String lastName = request.getParameter("lastName");
		System.out.println("lastName---"+lastName);
		
		Connection conn = Helper.getConnection();
		
	      try {
			Statement stmt2 	= conn.createStatement();
			stmt2.executeUpdate("use got_hospital_opc;");
			Statement stmt 	= conn.createStatement();

		     /* String sql = "select p.Patient_ID, p.Patient_firstName, p.Patient_LastName, v.Visit_ID, v.Visit_TimeIN, s.Symptom_Sheet_ID, Symptom_Name, s.Symptom_Description, s.Symptoms_Severity from patients p\r\n" + 
		      		"		join visits v on v.Patient_ID=p.Patient_ID\r\n" + 
		      		"		join symptom_sheet s on s.Visit_ID = v.Visit_ID\r\n" + 
		      		"        where s.Symptom_Name like '%"+symptomKey+"%'";*/
			
			String sql = "select * from patients p join contact_details c on p.Patient_ID = c.Patient_ID where Patient_LastName like '%"+lastName+"%'";
		      ResultSet rs = stmt.executeQuery(sql);
		      
		      rs.last();
		      int size = rs.getRow();
		      rs.beforeFirst();
		      if(rs!=null && size != 0) {
		    	  int d =  helpy.dumpData(rs, response.getWriter());
		      }
		      else
		      {
		    	  helpy.displayErrorMessage( response.getWriter());
		      }
		      rs.close();
	      }
			 catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				helpy.displayCustomErrorMessage( response.getWriter(),e.getMessage());
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
