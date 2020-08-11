package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.PrescriptionDAO;
import com.model.Prescription;

@WebServlet("/prescriptionServlet")
public class PrescriptionServlet extends HttpServlet{

	private static final long serialVersionUID = 5563948752194346943L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String task = request.getParameter("task");
		PrescriptionDAO prescriptionDAO = new PrescriptionDAO();
		boolean  queryStatus =false;
		String message ="Sorry For Inconvenience";
		
		int prescriptionId = 0;
		if (!"".equals(request.getParameter("prescriptionId")))
		{
			prescriptionId=Integer.parseInt(request.getParameter("prescriptionId"));
		}
		
		if (task != null && task.equals("deleteprescription")) {
			
			queryStatus =prescriptionDAO.deletePrescription(prescriptionId);
			 if(queryStatus) { 
				 message = "Prescription Successfully Deleted";
			 }else {
				 message = "Error while Deleting prescription";
			 }
		} else {

		
		  Prescription prescription = new
		  Prescription(0,
		  Integer.parseInt(request.getParameter("visitId")),
		  request.getParameter("medicationDescription"),
		  Integer.parseInt(request.getParameter("medicationQuantity")),
		  request.getParameter("medicationDosage"));
		  
		  

			if (task != null && task.equals("save")) {
				 queryStatus =prescriptionDAO.addPrescription(prescription);
				 
				 if(queryStatus) { 
					 message = "Prescription Successfully Inserted";
				 }else {
					 message = "Error while Inserting Prescription";
				 }
			}
			
			if (task != null && task.equals("update")) {
				 queryStatus =prescriptionDAO.updatePrescription(prescription);
				 if(queryStatus) { 
					 message = "Prescription Successfully Updated";
				 }else {
					 message = "Error while Updating Prescription";
				 }
			}
		}
		
		PrintWriter out = response.getWriter(); 
			out.println("<html><body><b>"+message + "</b></body></html>");

	}
}
