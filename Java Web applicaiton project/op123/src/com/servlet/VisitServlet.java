package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.SymptomDAO;
import com.DAO.VisitDAO;
import com.model.Symptom;
import com.model.Visit;

/**
 * Servlet implementation class VisitServlet
 */
public class VisitServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VisitServlet() {
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
		VisitDAO visitDAO = new VisitDAO();
		boolean  queryStatus =false;
		String message ="Sorry For Inconvenience";
		int pid = 0;
		
		if (request.getParameter("PatientId") != null && !request.getParameter("PatientId").equals(""))
			pid = Integer.parseInt(request.getParameter("PatientId"));
		
		int vid = 0;
		
		if (request.getParameter("visitId") != null && !request.getParameter("visitId").equals(""))
			vid = Integer.parseInt(request.getParameter("visitId"));
		
		int did = 0;
		
		if (request.getParameter("doctorId") != null && !request.getParameter("doctorId").equals(""))
			did = Integer.parseInt(request.getParameter("doctorId"));
		
		Visit visit = new Visit(vid, pid,did,request.getParameter("Facility"));
		  
		  String task = request.getParameter("task");

			if (task != null && task.equals("save")) {
				 queryStatus =visitDAO.addVisit(visit);
				 
				 if(queryStatus) { 
					 message = "Visit Successfully Inserted";
				 }else {
					 message = "Error while Inserting Visit";
				 }
			}
			
			if (task != null && task.equals("update")) {
				 queryStatus =visitDAO.updateVisit(visit);
				 if(queryStatus) { 
					 message = "Visit Successfully Updated";
				 }else {
					 message = "Error while Updating Visit";
				 }
			}
		
		
		PrintWriter out = response.getWriter(); 
			out.println("<html><body><b>"+message + "</b></body></html>");

	}


}

