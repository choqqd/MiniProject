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
	
	private static TheaterListDAO dao = new TheaterListDAO();
	
	public static TheaterListDAO getInstance() {
		// TODO Auto-generated method stub
		return dao;
	}
	public List<TheaterListVO> theaterAllList() {
		List<TheaterListVO> list = new ArrayList<TheaterListVO>();
		String sql = "select * from show where SHOW_CODE like 'T%';";
		conn = DBcon.getConnect();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) {
				TheaterListVO vo = new TheaterListVO();
				vo.setShow_name(rs.getString("Show_name"));
				vo.setConcert_hall_code(rs.getString("Concert_hall_code"));
				vo.setShow_code(rs.getString("Show_code"));
				vo.setShow_endday(rs.getString("show_endday"));
				vo.setShow_startday(rs.getString("Show_startday"));
			}
		} catch (SQLException e) {
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
