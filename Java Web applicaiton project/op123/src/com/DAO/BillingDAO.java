package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.java.Helper;
import com.model.Billing;


public class BillingDAO {

public boolean addBilling(Billing billing) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call insert_billing(?,?,?,?,?)}";	
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, billing.getVisitId());
			stmt.setDouble(2, billing.getTotalBill());
			stmt.setDouble(3, billing.getInsuranceAmount());
			stmt.setDouble(4, billing.getBalanceDue());
			stmt.setString(5, billing.getBillingDescription());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
	
	
public boolean updateBilling(Billing billing) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call update_billing(?,?,?,?,?,?)}";
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, billing.getBillingId());
			stmt.setInt(2, billing.getVisitId());
			stmt.setDouble(3, billing.getTotalBill());
			stmt.setDouble(4, billing.getInsuranceAmount());
			stmt.setDouble(5, billing.getBalanceDue());
			stmt.setString(6, billing.getBillingDescription());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
public boolean deleteBilling(int billId) {
	
	Helper dbHelper = new Helper();
	Connection connection = Helper.getConnection();
	
	String query = "{call delete_billing(?)}";
	
	try {
		CallableStatement stmt =  connection.prepareCall(query);
		
		stmt.executeUpdate("use got_hospital_opc;");
		stmt.setInt(1, billId);
		int count  = stmt.executeUpdate();
		return count>0 ? true:false;
	} catch (SQLException e) {
		System.out.println(e);
		return false;
	} 
}
}
