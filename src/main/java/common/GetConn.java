package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class GetConn {
	private static Connection conn = null;
	
	private String url = "jdbc:mysql://localhost:3306/javagroup5";
	private String user = "root";
	private String password = "1234";
	
	private static GetConn instanse = new GetConn();

	private GetConn() {		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			 System.out.println("드라이버 검색 실패 "+e.getMessage());
		} catch (SQLException e) {
				System.out.println("DB 연동 실패 "+e.getMessage());
		}
	}
	
	public static Connection getConn() {
		return conn;
	}
}
