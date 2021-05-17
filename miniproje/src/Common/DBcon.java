package Common;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBcon {
	static Connection conn;

	public static Connection getConnect() {
		try {
			InitialContext ic = new InitialContext();
			javax.sql.DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/mini");
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}