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
				pstmt.close();
				rs.close();
			}
		} catch (SQLException e) {}
	}
	
	// 로그인시 DB에서 aMid로 회원정보 조회하기 
	public AboutMemberVO getMemberIdCheck(String aMid) {
		AboutMemberVO vo = null;
		try {
			sql = "select * from aboutMember where aMid = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, aMid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo = new AboutMemberVO();
				vo.setaIdx(rs.getInt("aIdx"));
				vo.setaMid(rs.getString("aMid"));
				vo.setaPwd(rs.getString("aPwd"));
				vo.setaPwdHint(rs.getString("aPwdHint"));
				vo.setaPwdAns(rs.getString("aPwdAns"));
				vo.setaNickName(rs.getString("aNickName"));
				vo.setaPhoto(rs.getString("aPhoto"));
				vo.setaLevel(rs.getInt("aLevel"));
				vo.setaAnl(rs.getString("aAnl"));
				vo.setaJoinD(rs.getString("aJoinD"));
				vo.setaVisitD(rs.getString("aVisitD"));
				vo.setaVisitCnt(rs.getInt("aVisitCnt"));
				vo.setaAddress(rs.getString("aAddress"));
				vo.setaTel(rs.getString("aTel"));
			}
		} catch (SQLException e) {
			 System.out.println("SQL 오류 "+e.getMessage());
		} finally {
				rsClose();
		}
		return vo;
	}
		
		
		
		
}
