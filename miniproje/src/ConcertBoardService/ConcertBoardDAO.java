package ConcertBoardService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;

public class ConcertBoardDAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public void close() {
		if(rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(psmt != null) {
			try {
				psmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	//게시판 전체 글 받아오기
	public List<ConcertBoardVO> getBoarderList() {
		conn = DBcon.getConnect();
		List<ConcertBoardVO> list = new ArrayList<ConcertBoardVO>();
		
		try {
			psmt = conn.prepareStatement("select * from concert_board order by board_num desc");
			rs = psmt.executeQuery();
			while(rs.next()) {
				ConcertBoardVO vo = new ConcertBoardVO();
				vo.setBoardnum(rs.getInt("board_num"));
				vo.setMemberId(rs.getString("member_id"));
				vo.setMemberName(rs.getString("member_name"));
				vo.setTitle(rs.getString("title"));
				vo.setContents(rs.getString("contents"));
				vo.setUploadDate(rs.getString("upload_date"));
				vo.setHit(rs.getInt("hit"));
				
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	// 글제목으로 게시글 1건 조회
	public ConcertBoardVO selecetContents() {
		conn = DBcon.getConnect();
		ConcertBoardVO vo = new ConcertBoardVO();
		
		String selSql = "selecte * from concert_board where title = ?";
		
		try {
			psmt = conn.prepareStatement(selSql);
			psmt.setString(1, vo.getTitle());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setBoardnum(rs.getInt("board_num"));
				vo.setMemberId(rs.getString("member_id"));
				vo.setMemberName(rs.getString("member_name"));
				vo.setTitle(rs.getString("title"));
				vo.setContents(rs.getString("contents"));
				vo.setUploadDate(rs.getString("upload_date"));
				vo.setHit(rs.getInt("hit"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	//게시글 올리기
	public ConcertBoardVO insertContents(ConcertBoardVO vo) {
		conn = DBcon.getConnect();
		
		ConcertBoardVO cvo = new ConcertBoardVO();
		
		String numbering = "select nvl(max(board_num),0)+1 from concert_board";
		String insert = "insert into concert_board(board_num, member_name, title, contents, upload_date) values(?,?,?,?,to_char(sysdate, 'YYYY-MM-DD'))";
		
		//게시글 번호 저장 변수
		int bNum = 0;
		
		try {	// 게시글 값을 가져오는 쿼리
			psmt = conn.prepareStatement(numbering);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				bNum = rs.getInt(1);
			}
		} catch (Exception e) {

		} 
			
		// 게시글 입력
		try {
			psmt =  conn.prepareStatement(insert);
			psmt.setInt(1, bNum);
			//psmt.setString(2, vo.getMemberId());
			psmt.setString(2, vo.getMemberName());
			psmt.setString(3, vo.getTitle());
			psmt.setString(4, vo.getContents());
			
			int in = psmt.executeUpdate();
			System.out.println(in + "건 입력 완료.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cvo;
	}
	
	// 게시글 번호로 게시글 수정
	public boolean modifyContents(ConcertBoardVO vo) {
		conn = DBcon.getConnect();
		String upSql = "update concert_board set title = ?, contents = ? where board_num = ?";
		
		int modiCnt = 0;
		
		try {
			psmt = conn.prepareStatement(upSql);
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getContents());
			psmt.setInt(3, vo.getBoardnum());
			
			modiCnt = psmt.executeUpdate();
			System.out.println(modiCnt + "건 수정 완료.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return modiCnt == 0 ? false : true;
	}
	
	// 게시글 번호로 게시글 삭제
	public ConcertBoardVO delContents(int boardNum) {
		conn = DBcon.getConnect();
		String delSql = "delete from concert_board where board_num = ?";
		ConcertBoardVO cvo = new ConcertBoardVO();
		
		try {
			psmt = conn.prepareStatement(delSql);
			psmt.setInt(1, boardNum);
			
			int del = psmt.executeUpdate();
			System.out.println(del + "건이 삭제되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return cvo;
	}

}
