package com.servlet;

import java.io.IOException;

import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.BillingDAO;
import com.model.Billing;


@WebServlet("/billingServlet")
public class BillingServlet extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String task = request.getParameter("task");
		boolean  queryStatus =false;
		BillingDAO billingDAO = new BillingDAO();
		String message ="Sorry For Inconvenience";
		
		
		int billId = 0;
		if (!"".equals(request.getParameter("billId")))
		{
			billId=Integer.parseInt(request.getParameter("billId"));
		}
		
		if (task != null && task.equals("deleteBill")) {
			
			queryStatus =billingDAO.deleteBilling(billId);
			 if(queryStatus) { 
				 message = "Billing Successfully Deleted";
			 }else {
				 message = "Error while Deleting Billing";
			 }
		} else {
		
		  Billing billing = new
				  Billing(billId,
		  Integer.parseInt(request.getParameter("visitId")),
		  Double.parseDouble(request.getParameter("totalBill")),
		  Double.parseDouble(request.getParameter("insuranceAmount")),
		  Double.parseDouble(request.getParameter("balanceDue")),
		  request.getParameter("billingDescription").toString());
		  
		  

			if (task != null && task.equals("save")) {
				 queryStatus =billingDAO.addBilling(billing);
				 
				 if(queryStatus) { 
					 message = "Billing Successfully Inserted";
				 }else {
					 message = "Error while Inserting Billing";
				 }
			}
			
			if (task != null && task.equals("update")) {
				 queryStatus =billingDAO.updateBilling(billing);
				 if(queryStatus) { 
					 message = "Billing Successfully Updated";
				 }else {
					 message = "Error while Updating Billing";
				 }
			}
		
		}
		PrintWriter out = response.getWriter(); 
		out.println("<html><body><b>"+message + "</b></body></html>");
	}
}
