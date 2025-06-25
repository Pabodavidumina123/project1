package UserPackage;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static String url="jdbc:mysql://localhost:3306/onlineExamManagement";
	private static String user="root";
	private static String password="";
	private static Connection con;
	
	
	public static Connection  getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); // ✅ correct for MySQL 8+
			con=DriverManager.getConnection(url,user,password);
			System.out.println("succesfully");
		}
		catch(Exception e) {
			
			e.printStackTrace();
			System.out.println("Database not connection");
			
		}
			
			return con;
	}

}
