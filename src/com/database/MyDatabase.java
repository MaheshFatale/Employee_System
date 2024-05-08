package com.database;
	import java.sql.Connection;
	import java.sql.DriverManager;
	public class MyDatabase {
		public static Connection myconnection()throws Exception {
			
				 Connection con=null;
				 Class.forName("com.mysql.cj.jdbc.Driver");
				 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Employee_Management_System",
				 "root","");
				 return con;	
		}
			

		}

	