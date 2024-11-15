package about;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

import about.memberData.AboutMemberVO;
import common.GetConn;

public class AboutMemberDAO {
	private Connection conn = GetConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	String sql = "";
	AboutMemberVO vo = null;
	


	public void connClose() {
		try {
			if(conn != null) {
				conn.close();
			}
		} catch (SQLException e) {}
	}
	public void pstmtClose() {
		try {
			if(pstmt != null) {
				pstmt.close();
			}
		} catch (SQLException e) {}
	}
	public void rsClose() {
		try {
			if(rs != null) {
				rs.close();
			}
		} catch (SQLException e) {}
	}
	
	// 로그인시 DB에서 aMid로 회원정보 조회하기 
	public AboutMemberVO getMemberIdCheck(String aMid) {
		AboutMemberVO vo = null;
		try {
			sql = "";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
			}
		} catch (SQLException e) {
			 System.out.println("SQL 오류 "+e.getMessage());
		}
		return vo;
	}
		
		
		
		
}
