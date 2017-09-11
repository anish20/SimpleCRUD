package DatabaseConnection;

import java.sql.*;

public class ConnectionDemo {
	
	public static String Drivername="com.mysql.jdbc.Driver";
	public static String Conurl="jdbc:mysql://localhost:3306/CrudData";
	public static String Username="root";
	public static String Password="root";
	
	//Driver loading static method..
	static {
		try {
			Class.forName(Drivername);
			System.out.println("Driver loaded Successfully..");
		} catch (Exception e) {
			System.out.println("Driver Loading Exception"+e);
		}
	}
	
	// Connection creation steps
	
	public static Connection SharedConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(Conurl,Username,Password);
			System.out.println("Connection Created..");
		} catch (Exception e) {
			System.out.println("Connecting Error"+e);
		}
		
		return con;
	}
	
	/*public static void main(String[] args) {
		
		//driverLoad(); //we can directly call the static methods
		SharedConnection();//we can directly call the static methods and no need object and class because static inside static
		
		
	}*/
	
}
