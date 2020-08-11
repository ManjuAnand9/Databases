package com.DAO;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import com.java.Helper;
import com.model.MedicalTest;


public class TestDAO {

public boolean addTest(MedicalTest test) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call insert_test(?,?,?)}";	
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, test.getVisitId());
			stmt.setString(2, test.getTestDescription());
			stmt.setString(3, test.getTestResult());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
	
	
public boolean updateTest(MedicalTest test) {
		
		Helper dbHelper = new Helper();
		Connection connection = Helper.getConnection();
		
		String query = "{call update_test(?,?,?,?)}";
		
		try {
			CallableStatement stmt =  connection.prepareCall(query);
			
			stmt.executeUpdate("use got_hospital_opc;");
			stmt.setInt(1, test.getTestID());
			stmt.setInt(2, test.getVisitId());
			stmt.setString(3, test.getTestDescription());
			stmt.setString(4, test.getTestResult());
			int count  = stmt.executeUpdate();
			return count>0 ? true:false;
		} catch (SQLException e) {
			System.out.println(e);
			return false;
		} 
	}
}
