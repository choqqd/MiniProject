package TheaterListService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;

public class TheaterListDAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public List<TheaterListVO> theaterAllList() {
		List<TheaterListVO> list = new ArrayList<TheaterListVO>();
		String sql = "select ";
		conn = DBcon.getConnect();
		
		try {
			psmt = conn.prepareStatement(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}
		
		
		return list;
	}
	
	
	
	// Close 메소드
		public void close() {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (psmt != null) {
				try {
					psmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	
	
}
