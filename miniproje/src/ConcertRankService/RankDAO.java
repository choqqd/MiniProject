package ConcertRankService;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Common.DBcon;


public class RankDAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;

	
	public List<RankVO> getRankList() {
		conn = DBcon.getConnect();
		List<RankVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement("select show_name, show_code, booking_count from ticketing order by bookingcount asc");
			rs = psmt.executeQuery();

			while (rs.next()) {
				RankVO vo = new RankVO();
				vo.setShowCode(rs.getString("showCode"));
				vo.setShowName(rs.getString("showName"));
				vo.setBookingCount(rs.getInt("bookingcount"));
			
				list.add(vo);
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
		return list;
	}

}
