package MusicalBoardServlce;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;
import projectVO.ShowVO;

public class MusicalDAO {
	Connection conn;
	PreparedStatement psmt = null;
	ResultSet rs;

	// 전체 리스트 조회 출력 
	public List<ShowVO> getMusicalList() {
		String sql = "select show_name,show_startday,show_endday from show where SHOW_CODE like 'M%'";
		DBcon.getConnect();
		conn = DBcon.getConnect();
		List<ShowVO> list = new ArrayList();

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				ShowVO svo = new ShowVO();
				svo.setShow_Name(rs.getString("show_name"));
				svo.setShow_Startday(rs.getString("show_startday"));
				svo.setShow_Endday(rs.getString("show_endday"));

				list.add(svo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}
	
	// 뮤지컬 공연 등록
	public void insertMusical(ShowVO vo) {
		String sql = "insert into show values(?,?,?,?,?)";
		DBcon.getConnect();
		conn = DBcon.getConnect();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getShow_Code());
			psmt.setString(2, vo.getShow_Name());
			psmt.setString(3, vo.getShow_Startday());
			psmt.setString(4, vo.getShow_Endday());
			psmt.setString(5, vo.getConcert_Hall_Code());
			
			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력되었습니다");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	
	
	
	
	
	
	

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
