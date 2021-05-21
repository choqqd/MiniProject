package MusicalBoardService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;

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
		String sql = "SELECT NOTICE_NUM, NOTICE_TITLE, MEMBER_ID, NOTICE_DATE, NOTICE_HIT FROM MUSICAL_NOTICE ORDER BY NOTICE_NUM DESC";
		conn = DBcon.getConnect();
		List<NoticeVO> noticeList = new ArrayList<NoticeVO>();
		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while(rs.next()) { 	// 반복
				NoticeVO notice = new NoticeVO();
				notice.setNotice_Num(rs.getInt("Notice_Num"));
				notice.setMember_Id(rs.getString("Member_Id"));
				notice.setNotice_Title(rs.getString("Notice_Title"));
				notice.setNotice_Contents(rs.getString("Notice_Contents"));
				notice.setNotice_Date(rs.getString("Notice_Date"));
				notice.setNotice_Hit(rs.getInt("Notice_Hit"));
				noticeList.add(notice);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return noticeList;
	}
	
	//글쓰기(insert)
	public void insertNotice(NoticeVO notice) {
		String sql = "INSERT INTO MUSICAL_NOTICE VALUES(?,?,?,?,?,?,?)";
		conn = DBcon.getConnect();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, notice.getNotice_Num());
			psmt.setString(2, notice.getMember_Id());
			psmt.setString(3, notice.getNotice_Pwd());
			psmt.setString(4, notice.getNotice_Title());
			psmt.setString(5, notice.getNotice_Contents());
			psmt.setString(6, notice.getNotice_Date());
			psmt.setInt(7, notice.getNotice_Hit());
			
			int r = psmt. executeUpdate();
			System.out.println(r + "건 입력!");
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
	}
	
	//수정(update)
	public boolean updateNotice (NoticeVO vo) {
		String sql = "UPDATE MUSICAL_NOTICE SET NOTICE_TITLE = ?, NOTICE_CONTENTS = ? WHERE NOTICE_NUM = ?";
		conn = DBcon.getConnect();
		int update = 0;

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getNotice_Title());
			psmt.setString(2, vo.getNotice_Contents());
			psmt.setInt(3, vo.getNotice_Num());
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return update == 0 ? false : true;
	}
	
	//삭제(delete)
	public void delNotice (NoticeVO vo) {
		String sql = "DELETE FROM MUSICAL_NOTICE WHERE NOTICE_NUM = ?";
		conn = DBcon.getConnect();

		try {
			psmt = conn.prepareStatement(sql);
			psmt.setInt(1, vo.getNotice_Num());
			int r = psmt.executeUpdate();
			
			System.out.println(r + "건 삭제!");
		} catch (SQLException e) {
			e.printStackTrace();
		}
				
	}
	
	//조회수

	
}




















