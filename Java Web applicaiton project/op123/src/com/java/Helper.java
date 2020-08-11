package com.java;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

public class Helper {
	
	static Connection conn = null;
	
	public static Connection getNewConnection() {
		
			conn = null;
		 String myDriver ="com.mysql.cj.jdbc.Driver"; 
	      //String myUrl = "jdbc:mysql://127.0.0.1:3306/?user=root";
	      String myUrl = "jdbc:mysql://127.0.0.1:3306/?user=rooty";
	      
	      if (conn == null)
	      {
			try {
				Class.forName(myDriver);
				conn = DriverManager.getConnection(myUrl, "rooty", "123");
				System.out.println("root Conection made");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	      }
			return conn;
			
	}
	public static Connection getConnection() {
		
		 String myDriver ="com.mysql.cj.jdbc.Driver"; 
	      //String myUrl = "jdbc:mysql://127.0.0.1:3306/?user=root";
	      String myUrl = "jdbc:mysql://127.0.0.1:3306/?user=rooty";
	      
	      if (conn == null)
	      {
			try {
				Class.forName(myDriver);
				conn = DriverManager.getConnection(myUrl, "rooty", "123");
				System.out.println("root Conection made");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	      }
			return conn;
			
	}
	
	public static void setRoleConnection(String role) {
		 String myDriver ="com.mysql.cj.jdbc.Driver"; 
		 
		 String roleURL = "";
		 String roleConnUserName = "";
		 String roleConnPass = "";
		 
		 if("doctor".equalsIgnoreCase(role))
		 {
			 roleURL = "jdbc:mysql://127.0.0.1:3306/?user=doctoruser";
			 roleConnUserName = "doctoruser";
			 roleConnPass = "123";
		 }
		 else if("nurse".equalsIgnoreCase(role))
		 {
			 roleURL = "jdbc:mysql://127.0.0.1:3306/?user=nurseusers";
			 roleConnUserName = "nurseusers";
			 roleConnPass = "123";
		 }
		 else if("clerk".equalsIgnoreCase(role))
		 { 
			 roleURL = "jdbc:mysql://127.0.0.1:3306/?user=clerkusers";
			 roleConnUserName = "clerkusers";
			 roleConnPass = "123";
			 
		 }
		 
	      
	      try {
				Class.forName(myDriver);
				conn.close();
				conn = null;
				conn = DriverManager.getConnection(roleURL, roleConnUserName, roleConnPass);
				System.out.println("conn name"+conn.toString());
				System.out.println(role+"Connection made");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	      
			
	}

	
	public int dumpData(java.sql.ResultSet rs, java.io.PrintWriter out)
		    throws Exception {
		 int rowCount = 0;

		 out.println("<br><br><p ALIGN='center' >The Results</p><br><br><br><br><P ALIGN='center'><TABLE BORDER=1>");
		 ResultSetMetaData rsmd = rs.getMetaData();
		 int columnCount = rsmd.getColumnCount();
		 // table header
		 out.println("<TR>");
		 for (int i = 0; i < columnCount; i++) {
		   out.println("<TH>" + rsmd.getColumnLabel(i + 1) + "</TH>");
		   }
		 out.println("</TR>");
		 // the data
		 while (rs.next()) {
		  rowCount++;
		  out.println("<TR>");
		  for (int i = 0; i < columnCount; i++) {
		    out.println("<TD>" + rs.getString(i + 1) + "</TD>");
		    }
		  out.println("</TR>");
		  }
		 out.println("</TABLE></P><br><br><br><br><br><br><a id=\"homepagelink\" href=\"HomePage.html\">Go to Home Page</a>");
		 return rowCount;
		}
	
	public void displayErrorMessage(java.io.PrintWriter out)
	
	{
		out.println("<br><br><br><br><div ALIGN='center' ><h1>No Results Found</h2></div><br><br>");
	}

	public void displayCustomErrorMessage(PrintWriter writer, String errorString) {
		writer.println("<br><br><br><br><div ALIGN='center' ><h1>"+errorString+"</h2></div><br><br>");		
	}
	
	

}
