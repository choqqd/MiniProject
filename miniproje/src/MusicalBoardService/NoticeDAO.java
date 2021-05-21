package MusicalBoardService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;
import ConcertBoardService.ConcertBoardVO;

public class NoticeDAO {
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
	
	
	//전체조회(list)
	NoticeVO vo = new NoticeVO();
	public List<NoticeVO> getNoticeList() {
		conn = DBcon.getConnect();
		String sql = "SELECT * FROM MUSICAL_NOTICE ORDER BY NOTICE_NUM DESC";
		List<NoticeVO> noticeList = new ArrayList<NoticeVO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) { 	// 반복
				NoticeVO notice = new NoticeVO();
				notice.setNotice_Num(rs.getInt("NOTICE_NUM"));
				notice.setMember_Id(rs.getString("MEMBER_ID"));
				notice.setNotice_Title(rs.getString("NOTICE_TITLE"));
				notice.setNotice_Contents(rs.getString("NOTICE_CONTENTS"));
				notice.setNotice_Date(rs.getString("NOTICE_DATE"));
				notice.setNotice_Hit(rs.getInt("NOTICE_HIT"));
				notice.setNotice_Pwd(rs.getString("NOTICE_PWD"));
				noticeList.add(notice);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return noticeList;
	}
	
	//1건조회(select)
	public NoticeVO selectNotice(String title) {
		conn = DBcon.getConnect();
		NoticeVO vo = new NoticeVO();
		
		String sql = "SELECT * FROM MUSICAL_NOTICE WHERE TITLE = ?";

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, title);
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setNotice_Num(rs.getInt("NOTICE_NUM"));
				vo.setMember_Id(rs.getString("MEMBER_ID"));
				vo.setNotice_Title(rs.getString("NOTICE_TITLE"));
				vo.setNotice_Contents(rs.getString("NOTICE_CONTENTS"));
				vo.setNotice_Date(rs.getString("NOTICE_DATE"));
				vo.setNotice_Hit(rs.getInt("NOTICE_HIT"));
				vo.setNotice_Pwd(rs.getString("NOTICE_PWD"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}
	
	//글쓰기(insert)
	public NoticeVO insertNotice(NoticeVO vo) {
		conn = DBcon.getConnect();
		
		NoticeVO nvo = new NoticeVO();
		
		String sql = "INSERT INTO MUSICAL_NOTICE(NOTICE_NUM, MEMBER_ID, NOTICE_PWD, NOTICE_TITLE, NOTICE_CONTENTS)"
				+ " VALUES((select max(NOTICE_NUM)+1 from MUSICAL_NOTICE),?,?,?,?)";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getMember_Id());
			psmt.setString(2, vo.getNotice_Pwd());
			psmt.setString(3, vo.getNotice_Title());
			psmt.setString(4, vo.getNotice_Contents());
			int r = psmt. executeUpdate();
			System.out.println(r + "건 입력!");
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return nvo;
	}
	
	//수정(update)
	public void updateNotice (NoticeVO vo) {
		conn = DBcon.getConnect();
		String sql = "UPDATE MUSICAL_NOTICE SET NOTICE_TITLE = ?, NOTICE_CONTENTS = ? WHERE NOTICE_NUM = ?";
		int update = 0;
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getNotice_Title());
			psmt.setString(2, vo.getNotice_Contents());
			psmt.setInt(3, vo.getNotice_Num());
			int r = psmt.executeUpdate();
			System.out.println(r+"건 입력완료");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
	}
	
	//삭제(delete)
	public NoticeVO delNotice (int noticeNum) {
		String sql = "DELETE FROM MUSICAL_NOTICE WHERE NOTICE_NUM = ?";
		conn = DBcon.getConnect();
		NoticeVO nvo = new NoticeVO();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getNotice_Num());
			int r = psmt.executeUpdate();
			System.out.println(r + "건 삭제!");
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return nvo;
				
	}
	
	//조회수

	
}

