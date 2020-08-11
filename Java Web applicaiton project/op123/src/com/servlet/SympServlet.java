package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BillingDAO;
import com.DAO.SymptomDAO;
import com.model.Billing;
import com.model.Symptom;

/**
 * Servlet implementation class SympServlet
 */
public class SympServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SympServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SymptomDAO symptomDAO = new SymptomDAO();
		boolean  queryStatus =false;
		String message ="Sorry For Inconvenience";
		int sid = 0;
		
		if (request.getParameter("symptomSheetID") != null && !request.getParameter("symptomSheetID").equals(""))
			sid = Integer.parseInt(request.getParameter("symptomSheetID"));
		
		int vid = 0;
		
		if (request.getParameter("visitId") != null && !request.getParameter("visitId").equals(""))
			vid = Integer.parseInt(request.getParameter("visitId"));
		
		Symptom symptom = new
				Symptom(
		  vid, request.getParameter("symptomName"),
		  Integer.parseInt(request.getParameter("dayseffected")),
		  sid,request.getParameter("symptomDescription"),
		  request.getParameter("symptomseverity"));
		  
		  String task = request.getParameter("task");

			if (task != null && task.equals("save")) {
				 queryStatus =symptomDAO.addSymptom(symptom);
				 
				 if(queryStatus) { 
					 message = "symptom Successfully Inserted";
				 }else {
					 message = "Error while Inserting symptom";
				 }
			}
			
			if (task != null && task.equals("update")) {
				 queryStatus =symptomDAO.updateSymptom(symptom);
				 if(queryStatus) { 
					 message = "symptom Successfully Updated";
				 }else {
					 message = "Error while Updating symptom";
				 }
			}
		
		
		PrintWriter out = response.getWriter(); 
			out.println("<html><body><b>"+message + "</b></body></html>");

	}



}
