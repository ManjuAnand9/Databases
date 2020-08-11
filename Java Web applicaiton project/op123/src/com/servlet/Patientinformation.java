package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PatientDAO;
import com.model.Patientinfo;

@WebServlet("/PatientinformationServlet")

public class Patientinformation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Patientinformation() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String task = request.getParameter("Submit");
		boolean  queryStatus =false;
		PatientDAO patientDAO = new PatientDAO();
		
		String message ="Sorry For Inconvenience";
   
		String dob=request.getParameter("RESULT_TextField-3");
		String insuranceexpire=request.getParameter("RESULT_TextField-15");
		Date dob1=Date.valueOf(dob);
		Date expire=Date.valueOf(insuranceexpire);
	
		int patientId = 0;
		if (!"".equals(request.getParameter("patientId")))
		{
			patientId=Integer.parseInt(request.getParameter("patientId"));
		}
		
		Patientinfo patientinfo1 = new
				  Patientinfo(patientId,
		  Integer.parseInt(request.getParameter("RESULT_TextField-13")),
		  request.getParameter("RESULT_TextField-1").toString(),
		  request.getParameter("RESULT_TextField-2").toString(),
		  dob1,
		  request.getParameter("RESULT_RadioButton-4").toString(),
		  Integer.parseInt(request.getParameter("RESULT_TextField-14")),
		  expire,
		  request.getParameter("RESULT_TextField-5").toString(),
		  request.getParameter("RESULT_TextField-6").toString(),
		  request.getParameter("RESULT_TextField-10").toString(),
		  request.getParameter("RESULT_TextField-12").toString(),
		  request.getParameter("RESULT_TextField-8").toString(),
		  request.getParameter("RESULT_TextField-7").toString(),
		  Integer.parseInt(request.getParameter("RESULT_TextField-9")));
		   if (task != null && task.equals("Submit")) {
				 queryStatus =patientDAO.insertpatient(patientinfo1);
				 
				 if(queryStatus) { 
					 message = "Patient Details Successfully Inserted";
				 }else {
					 message = "Error while Inserting patient details";
				 }
			}
		   if (task != null && task.equals("update")) {
				 queryStatus =patientDAO.updatePatient(patientinfo1);
				 if(queryStatus) { 
					 message = "Patient Details Successfully Updated";
				 }else {
					 message = "Error while Updating Patient";
				 }
			}
			
		PrintWriter out = response.getWriter(); 
		out.println("<html><body><b>"+message + "</b></body></html>");
	}

}
