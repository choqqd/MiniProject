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
 
	 
	public RankVO getRank(String showCode) { 
		conn = DBcon.getConnect();
		String sql = "";
		RankVO rank = new RankVO();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, showCode);
			rs = psmt.executeQuery();
			if (rs.next()) {
				rank.setShowName(rs.getString("showName"));
				rank.setHit(rs.getInt("Hit"));
			
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
		return rank;
	}

	public List<RankVO> getRankList() {
		conn = DBcon.getConnect();
		List<RankVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement("select* from ");
			rs = psmt.executeQuery();

			while (rs.next()) {
				RankVO vo = new RankVO();
				vo.setShowCode(rs.getString("showCode"));
				vo.setShowName(rs.getString("showName"));
				vo.setHit(rs.getInt("hit"));
			
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
