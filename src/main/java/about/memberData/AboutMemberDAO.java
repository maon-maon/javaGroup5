package about.memberData;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import about.scribble.ScribbleVO;

import java.sql.PreparedStatement;

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
	// 비밀번호 변경시 회원조회
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
				vo.setaNickName(rs.getString("aNickName"));
				vo.setaPhoto(rs.getString("aPhoto"));
				vo.setaAnl(rs.getString("aAnl"));
				vo.setaLevel(rs.getInt("aLevel"));
				vo.setaJoinD(rs.getString("aJoinD"));
				vo.setaVisitD(rs.getString("aVisitD"));
				vo.setaVisitCnt(rs.getInt("aVisitCnt"));
				vo.setaPwdHint(rs.getString("aPwdHint"));
				vo.setaPwdAns(rs.getString("aPwdAns"));
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
	
	// 아이디/비밀번호 중복체크 
	public AboutMemberVO getJoinBtnCheck(String strCheck) {
		vo = new AboutMemberVO();
		int strSw = 0;
		if(strCheck.indexOf("_aNickName") != -1) {
			strCheck = strCheck.substring(0, strCheck.indexOf("_aNickName"));
			strSw = 1;
		}
		
		try {
			if(strSw == 0) {
				sql = "select * from aboutMember where aMid = ?";
			}
			else if(strSw == 1) {
				sql = "select * from aboutMember where aNickName = ?";
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, strCheck);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				vo = new AboutMemberVO();
				vo.setaMid(rs.getString("aMid"));
				vo.setaNickName(rs.getString("aNickName"));
				
			}
		} catch (SQLException e) {
			 System.out.println("SQL 오류 "+e.getMessage());
		} finally {
				rsClose();
		}
		return vo;
	}
	
	// 회원 가입 처리
	public int setJoinOk(AboutMemberVO vo) {
		int res = 0;
		try {
			sql = "insert into aboutMember values(default, ?,?,?,?,?, default,default,default,default,default,default,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getaMid());
			pstmt.setString(2, vo.getaPwd());
			pstmt.setString(3, vo.getaNickName());
			pstmt.setString(4, vo.getaPhoto());
			pstmt.setString(5, vo.getaAnl());
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			 System.out.println("SQL 오류 "+e.getMessage());
		} finally {
				pstmtClose();
		}
		return res;
	}
	
	// 회원 정보 수정
	public int MemberUpdateOk(AboutMemberVO vo) {
		int res = 0;
		try {
			sql = "update aboutMember set aPwd=?, aNickName=?, aPhoto=?, aAnl=? where aMid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getaPwd());
			pstmt.setString(2, vo.getaNickName());
			pstmt.setString(3, vo.getaPhoto());
			pstmt.setString(4, vo.getaAnl());
			pstmt.setString(5, vo.getaMid());
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			 System.out.println("SQL 오류 "+e.getMessage());
		} finally {
				pstmtClose();
		}
		return res;
	}
	
	// 방문일 증가
	public void setUserInfoUpdate(AboutMemberVO vo) {
		try {
			sql = "update aboutMember set aVisitCnt=aVisitCnt+1, aVisitD=now() where aMid = ?"; //
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getaMid());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		} finally {
			pstmtClose();
		}	
	}
	
	// 회원분류 변경 : 관리0운영1회원2회원3휴면8탈퇴9
	public int setUserLevel(String cpMid) {
		int res = 0;
		try {
			sql = "update aboutMember set aLevel=9 where aMid=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cpMid);
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		} finally {
			pstmtClose();
		}	
		return res;
	}
	
	
		
		
		
}
