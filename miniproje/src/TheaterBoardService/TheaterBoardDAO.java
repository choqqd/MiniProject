package TheaterBoardService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;
import projectVO.ShowVO;



public class TheaterBoardDAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public List<ShowVO> MiniboardList() {
		List<ShowVO> list = new ArrayList<ShowVO>();
		String sql = "select board_id, board_title, user_name, board_date, board_hit";
		try {
			conn = DBcon.getConnect();
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				ShowVO vo = new ShowVO();
				vo.setShow_Name(rs.getNString("Show_name"));
				vo.setShow_Startday(rs.getNString("Show_startday"));
				vo.setShow_Endday(rs.getNString("Show_endday"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
//...................
	// Close


	// 게시글 전체 리스트 뽑아오기
	
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
