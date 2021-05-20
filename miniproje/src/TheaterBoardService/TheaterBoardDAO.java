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
	public List<TheaterBoardVO> MiniboardList() {
		conn = DBcon.getConnect();
		List<TheaterBoardVO> list = new ArrayList<TheaterBoardVO>();
		String sql = "select board_num, board_title, member_name, board_date, board_hit from Theater_Board ORDER BY BOARD_DATE DESC";
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				TheaterBoardVO vo = new TheaterBoardVO();
				vo.setBoardNum(rs.getInt("board_num"));
				vo.setBoardTitle(rs.getString("board_title"));
				vo.setMemberName(rs.getString("member_name"));
				vo.setBoardDate(rs.getString("board_date"));
				vo.setBoardHit(rs.getInt("board_hit"));
				list.add(vo);
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
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	/*
	 * ----------------------------------- 게시판 페이지 영역
	 */

	// 게시판 전체 리스트
	public List<TheaterBoardVO> theaterBoardList() {
		List<TheaterBoardVO> list = new ArrayList<TheaterBoardVO>();
		String sql = "select * from THEATER_BOARD ORDER by 1";
		conn = DBcon.getConnect();

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				TheaterBoardVO tvo = new TheaterBoardVO();
				tvo.setBoardNum(rs.getInt("board_num"));
				tvo.setMemberName(rs.getString("member_name"));
				tvo.setBoardTitle(rs.getString("board_title"));
				tvo.setBoardContent(rs.getString("board_content"));
				tvo.setBoardDate(rs.getString("board_date"));
				tvo.setBoardHit(rs.getInt("board_hit"));
				list.add(tvo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}

	// 게시물 insert
	public void insertBoard(TheaterBoardVO vo) {
		conn = DBcon.getConnect();
		String selectKey = "select nvl(max(board_num),0)+1 from theater_board";
		String date = "select TO_CHAR(SYSDATE, 'MM/DD/HH24:MI:SS') FROM DUAL";
		String inssertSql = "insert into THEATER_BOARD values (?,?,?,?,?,?)";
		int key = 0;
		String resultDate = null;
		// 게시판 번호의 맥시멈 값에 1을 더한 값을 출력
		try {
			psmt = conn.prepareStatement(selectKey);
			rs = psmt.executeQuery();
			if (rs.next()) {
				key = rs.getInt(1);
			}
			// 현재 월 / 달 / 시간 반환
			psmt = conn.prepareStatement(date);
			rs = psmt.executeQuery();
			if (rs.next()) {
				resultDate = rs.getString(1);
			}
			// insert 작업
			psmt = conn.prepareStatement(inssertSql);
			psmt.setInt(1, key);
			psmt.setString(2, vo.getBoardTitle());
			psmt.setString(3, vo.getBoardContent());
			psmt.setString(4, vo.getMemberName());
			psmt.setString(5, resultDate);
			psmt.setInt(6, vo.getBoardHit());
			int r = psmt.executeUpdate();
			if (r != 0) {
				System.out.println("작업완료");
			} else {
				System.out.println("실패");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}

	// 게시글 한건 조회
	public TheaterBoardVO getBoardSelect(TheaterBoardVO vo) {
		conn = DBcon.getConnect();
		String sql = "select * from theater_board where board_num = ?";
		TheaterBoardVO tvo = new TheaterBoardVO();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardNum());
			rs = psmt.executeQuery();
			if (rs.next()) {
				tvo.setBoardNum(rs.getInt("board_num"));
				tvo.setMemberName(rs.getString("member_name"));
				tvo.setBoardTitle(rs.getString("board_title"));
				tvo.setBoardContent(rs.getString("board_content"));
				tvo.setBoardDate(rs.getString("board_date"));
				tvo.setBoardHit(rs.getInt("board_hit"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return tvo;

	}

	// DB연동 게시글 삭제
	public void delBoard(TheaterBoardVO vo) {
		conn = DBcon.getConnect();
		String sql = "delete from theater_board where board_num = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getBoardNum());
			int n = psmt.executeUpdate();
			if (n != 0) {
				System.out.println("삭제완료");
			} else {
				System.out.println("삭제실패");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	// update
	public boolean updateBoard(TheaterBoardVO vo) {
		conn = DBcon.getConnect();
		String sql = "update theater_board set board_title = ?, board_content = ? member_name = ? where board_num = ?";
		int tlqkf = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getBoardTitle());
			psmt.setString(2, vo.getBoardContent());
			psmt.setString(3, vo.getMemberName());
			psmt.setInt(4, vo.getBoardNum());
			tlqkf = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return tlqkf == 0 ? false : true;

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