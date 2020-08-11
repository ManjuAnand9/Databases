

package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.java.Helper;
import com.model.Billing;
import com.model.Prescription;
import com.model.Visit;

public class VisitDAO {

public boolean addVisit(Visit visit) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call insert_visit(?,?,?)}";	
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, visit.getPatientId());
			stmt.setInt(2, visit.getDoctorId());
			stmt.setString(3, visit.getFacility());
			
			
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
	
	
public boolean updateVisit(Visit visit) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call update_visit(?,?,?,?)}";
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, visit.getVisitId());
			stmt.setInt(2, visit.getPatientId());
			stmt.setInt(3, visit.getDoctorId());
			stmt.setString(4, visit.getFacility());
			
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
}
