package Common;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import projectVO.LocationVO;
import projectVO.MemberVO;

public class LoginOutDAO {
	Connection conn;
	PreparedStatement psmt;
	ResultSet rs;
	
	public LocationVO getlocation(String add) {
		String sql = "select * from locations where location_code=?";
		conn = DBcon.getConnect();
		LocationVO vo = new LocationVO();
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, add);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				vo.setLocation_Code(rs.getString("location_code"));
				vo.setLocation(rs.getString("location"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	public MemberVO login(String id, String pwd) {
		String sql = "select * from member where member_id=? and member_pwd=?";
		MemberVO vo = new MemberVO();
		System.out.println(id+pwd);
		conn = DBcon.getConnect();
		
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pwd);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				vo.setMember_Id(rs.getString("member_id"));
				vo.setMember_Pwd(rs.getString("member_pwd"));
				vo.setMember_Address(rs.getString("member_address"));
				vo.setMember_Age(rs.getInt("member_age"));
				vo.setMember_Code(rs.getString("member_code"));
				vo.setMember_Email(rs.getString("member_email"));
				vo.setMember_Gender(rs.getString("member_gender"));
				vo.setMember_Name(rs.getString("member_name"));
				vo.setMember_Tel(rs.getString("member_tel"));
			}
			System.out.println(vo);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
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
	
}
