package TheaterBoardService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;



public class TheaterBoardDAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
/*--------------------
 *     메인 홈페이지 게시판
 *     연극 메인 홈페이지 게시판 리스트 뽑아오기
 */
	public List<TheaterVO> MiniboardList() {
		conn = DBcon.getConnect();
		List<TheaterVO> list = new ArrayList<TheaterVO>();
		String sql = "select board_num, board_title, member_id, board_date, board_hit from Theater_Board";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				TheaterVO vo = new TheaterVO();
				vo.setBoard_num(rs.getInt("board_num"));
				vo.setUser_name(rs.getString("member_id"));
				vo.setBoard_title(rs.getString("board_title"));
				vo.setBoard_date(rs.getString("board_date"));
				vo.setBoard_hit(rs.getInt("board_hit"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	
	public void MiniboardInsert(TheaterVO vo) {
		
		String sql = "insert into theater_board(board_num, user_name, board_title, board_hit, board_date) "
				+ "values ((select max(board_num)+1 from theater_board), ?,?,?,?)";
				
		conn = DBcon.getConnect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getUser_name());
			psmt.setString(2, vo.getBoard_title());
			psmt.setString(3, vo.getBoard_date());
			psmt.setInt(4, vo.getBoard_hit());
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력됨");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

	}
	
	public void MiniboardDelete(TheaterVO vo) {
		conn = DBcon.getConnect();
		String sql = "delete from theater_board where board_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoard_num());
			int r = psmt.executeUpdate();
			System.out.println(r + " 개의 게시물 제거됌");
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
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
