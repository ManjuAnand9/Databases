package com.java;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Types;

public class Batman {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		 String myDriver ="com.mysql.cj.jdbc.Driver"; 
	      String myUrl = "jdbc:mysql://127.0.0.1:3306/?user=doctoruser";
	      Connection conn = null;
	      if (conn == null)
	      {
			try {
				Class.forName(myDriver);
				conn = DriverManager.getConnection(myUrl, "doctoruser", "123");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch (Exception e)
			{
				e.printStackTrace();
			}
			System.out.println("hi"+conn.toString());
			String query = "Select * from tests";	
			CallableStatement stmt;
			try {
				stmt = conn.prepareCall(query);
				stmt.executeUpdate("use got_hospital_opc;");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
	      }
		
		/*System.out.println("hi");
		// create a mysql database connection
	      String myDriver ="com.mysql.cj.jdbc.Driver"; 
	      String myUrl = "jdbc:mysql://127.0.0.1:3306/?user=root";
	      try {
			Class.forName(myDriver);
			
			Connection conn = DriverManager.getConnection(myUrl, "root", "iforgot");
			System.out.println("hi" + conn.getSchema());
			
			Statement stmt2 	= conn.createStatement();
			stmt2.executeUpdate("use got_hospital;");
			Statement stmt 	= conn.createStatement();

		      String sql = "select * from patients LIMIT 5;";
		      ResultSet rs = stmt.executeQuery(sql);
		      //STEP 5: Extract data from result set
		      while(rs.next()){
		         //Retrieve by column name
		         

		         //Display values
		         System.out.println("Patient FirstName: " + rs.getString(2) + "--------Patient LastName: " + rs.getString(3) );
		      
		      }
		      rs.close();
			conn.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	      
	      try 
	      {
	    		  
	    		 Class.forName(myDriver);
	  			
	  			Connection connection = DriverManager.getConnection(myUrl, "root", "iforgot");

	            // Creates a CallableStatement for executing the stored
	            // procedure
	            String query = "{call set_userDetails(?, ?, ?, ?)}";
	            CallableStatement cb = connection.prepareCall(query);

	            // Sets the input parameter

	            // Registers the out parameters
	            cb.registerOutParameter("role_name", Types.VARCHAR);
	            cb.registerOutParameter("user_name", Types.VARCHAR);
	            cb.setString(3, "Ruby on Rails");
	            cb.setString(4, "Ruby on Rails");
	            // Executes the query
	            cb.executeQuery();

	            // Gets the query result output
	            System.out.println("Name  : " + cb.getString(1));
	            System.out.println("Code  : " + cb.getString(2));
	            System.out.println("Price : " + cb.getBigDecimal(3));
	        } catch (SQLException e) {
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	      */

	}

}
