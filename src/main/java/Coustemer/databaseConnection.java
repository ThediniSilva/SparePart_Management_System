package Coustemer;

import java.sql.Connection;
import java.sql.DriverManager;

public class databaseConnection {
	
	//Create Database connection
			private static String url = "jdbc:mysql://localhost:3306/spareparts";
			private static String un = "root";
			private static String pw = "praboda427@#2";
			
			private static Connection con;
			
			public static Connection getConnection() {
				
				try {
					
					Class.forName("com.mysql.jdbc.Driver");
					con = DriverManager.getConnection(url, un, pw);
					
				}catch(Exception e){
					System.out.println("Database connection is not sucess.");
					
				}
				
				return con;
				
				
				
			}

}
