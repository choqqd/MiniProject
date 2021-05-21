package MusicalBoardService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import Common.DBcon;
import projectVO.Concert_HallVO;
import projectVO.ShowVO;
import projectVO.Show_InfomationVO;

public class InfoDAO {
	Connection conn;
	PreparedStatement psmt ;
	ResultSet rs;

	// 전체 리스트 조회 출력 
	public List<ShowVO> getMusicalList() {
		String sql = "select show_code,show_name,show_startday,show_endday from show where SHOW_CODE like 'M%'";
		DBcon.getConnect();
		conn = DBcon.getConnect();
		List<ShowVO> list = new ArrayList();

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				ShowVO svo = new ShowVO();
				svo.setShow_Code(rs.getString("SHOW_CODE"));
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
	
	
	// 한건 조회 
	public InfoVO getshow(String Show_code) {
		String sql = "select s.SHOW_NAME,s.SHOW_CODE,s.SHOW_STARTDAY,s.SHOW_ENDDAY,\r\n"
				+ "i.SHOW_INFO_AGE,i.SHOW_INFO_CASTING,c.CONCERT_HALL_NAME,c.CONCERT_HALL_TEL,c.CONCERT_HALL_ADDRESS\r\n"
				+ "from show s , SHOW_INFOMATION i ,CONCERT_HALL c\r\n"
				+ "where s.SHOW_CODE = i.SHOW_CODE \r\n"
				+ "and s.CONCERT_HALL_CODE = c.CONCERT_HALL_CODE\r\n"
				+ "and s.show_code=?";
		
		DBcon.getConnect();
		conn = DBcon.getConnect();
		InfoVO ivo = new InfoVO();
		try {
			
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, Show_code);
			rs = psmt.executeQuery();
			
			while (rs.next()) {
				ivo.setShow_Name(rs.getString("Show_Name"));
				ivo.setShow_Code(rs.getString("Show_Code"));
				ivo.setShow_Startday(rs.getString("Show_Startday"));
				ivo.setShow_Endday(rs.getString("Show_Endday"));
				ivo.setShow_Info_Age(rs.getInt("Show_Info_Age"));
				ivo.setShow_Info_Casting(rs.getString("Show_Info_Casting"));
				ivo.setConcert_Hall_Name(rs.getString("Concert_Hall_Name"));
				ivo.setConcert_Hall_Tel(rs.getString("Concert_Hall_Tel"));
				ivo.setConcert_Hall_Address(rs.getString("Concert_Hall_Address"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
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
		return ivo;

	}
	
	// 뮤지컬 공연 등록
	public void insertMusical(ShowVO vo) {
		DBcon.getConnect();
		conn = DBcon.getConnect();
		String sql = "INSERT INTO show VALUES(\r\n"
				+ "      (select CONCAT(SUBSTR(max(SHOW_CODe),1,1),SUBSTR(max(SHOW_CODe),2,2)+1)\r\n"
				+ "      from show \r\n"
				+ "      where SHOW_CODE like 'M%'),\r\n"
				+ "      ?,?,?,?)";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, vo.getShow_Name());
			psmt.setString(2, vo.getShow_Startday());
			psmt.setString(3, vo.getShow_Endday());
			psmt.setString(4, vo.getConcert_Hall_Code());

			int r = psmt.executeUpdate();
			System.out.println(r + "건 입력되었습니다");
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	// 삭제 
	public void deleteMusical(String show_code) {
		DBcon.getConnect();
		conn = DBcon.getConnect();
		String sql = "delete from show where show_code=?";
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1,show_code);
			int r = psmt.executeUpdate();
			System.out.println(r+ "건 삭제되었습니다 ");
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
