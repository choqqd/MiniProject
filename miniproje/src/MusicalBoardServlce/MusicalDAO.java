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

	public List<ShowVO> getMusicalList() {
		String sql = "select show_name,show_startday,show_endday from show";
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
