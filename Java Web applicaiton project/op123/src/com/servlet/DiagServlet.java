package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.DiagnosisDAO;
import com.DAO.TestDAO;
import com.model.Diagnosis;
import com.model.MedicalTest;

/**
 * Servlet implementation class DiagServlet
 */
public class DiagServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DiagServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TestDAO testDAO = new TestDAO();
		boolean  queryStatus =false;
		String message ="Sorry For Inconvenience";


		int did = 0;
		
		if (request.getParameter("diagIDforTest") != null && !request.getParameter("diagIDforTest").equals(""))
			did = Integer.parseInt(request.getParameter("diagIDforTest"));
		
		int tid = 0;
		
		if (request.getParameter("TestID") != null && !request.getParameter("TestID").equals(""))
			tid = Integer.parseInt(request.getParameter("TestID"));
		
		  MedicalTest test = new MedicalTest(tid,did,request.getParameter("testName"),request.getParameter("testResult"));


		  String task = request.getParameter("task");

			if (task != null && task.equals("save")) {
				 queryStatus = testDAO.addTest(test);

				 if(queryStatus) {
					 message = "Test Successfully Inserted";
				 }else {
					 message = "Error while Inserting Test";
				 }
			}

			if (task != null && task.equals("update")) {
				 queryStatus =testDAO.updateTest(test);
				 if(queryStatus) {
					 message = "Test Successfully Updated";
				 }else {
					 message = "Error while Updating test";
				 }
			}


		PrintWriter out = response.getWriter();
			out.println("<html><body><b>"+message + "</b></body></html>");

	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		DiagnosisDAO diagnosisDAO = new DiagnosisDAO();
		boolean  queryStatus =false;
		String message ="Sorry For Inconvenience";


		int did = 0;
		
		if (request.getParameter("diagID") != null && !request.getParameter("diagID").equals(""))
			did = Integer.parseInt(request.getParameter("diagID"));
		
		int vid = 0;
		
		if (request.getParameter("visitID") != null && !request.getParameter("visitID").equals(""))
			vid = Integer.parseInt(request.getParameter("visitID"));
		
		  Diagnosis diagnosis = new Diagnosis(did,vid,request.getParameter("diagDescription"));


		  String task = request.getParameter("task");

			if (task != null && task.equals("save")) {
				 queryStatus = diagnosisDAO.addDiagnosis(diagnosis);

				 if(queryStatus) {
					 message = "Diagnosis Successfully Inserted";
				 }else {
					 message = "Error while Inserting Diagnosis";
				 }
			}

			if (task != null && task.equals("update")) {
				 queryStatus =diagnosisDAO.updateDiagnosis(diagnosis);
				 if(queryStatus) {
					 message = "Diagnosis Successfully Updated";
				 }else {
					 message = "Error while Updating Diagnosis";
				 }
			}


		PrintWriter out = response.getWriter();
			out.println("<html><body><b>"+message + "</b></body></html>");

	}
}
