package about.scribble;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import common.GetConn;

public class ScribbleDAO {
	private Connection conn = GetConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	String sql = "";
	ScribbleVO vo = null;
	
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
	
	// 쪽지 DB에 저장
	public int setScribble(ScribbleVO vo) {
		int res = 0;
		try {
			sql = "insert into scribble values(default, ?, ?, ?, ?, ?, default, default, default, default, default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getInMid());
			pstmt.setString(2, vo.getInCtg());
			pstmt.setString(3, vo.getInTitle());
			pstmt.setInt(4, vo.getInScore());
			pstmt.setString(5, vo.getInPhoto());
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			pstmtClose();
		}
		return res;
	}
	
	//DB에 저장된 자료 개인 아이디로 검색해서 가져오기
	public ArrayList<ScribbleVO> getScribbleList(String sAmid) {
		ArrayList<ScribbleVO> vos = new ArrayList<ScribbleVO>();
		try {
			sql = "select * from scribble where inMid = ? order by inIdx desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sAmid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ScribbleVO();
				vo.setInIdx(rs.getInt("inIdx"));
				vo.setInMid(rs.getString("inMid"));
				vo.setInCtg(rs.getString("inCtg"));
				vo.setInTitle(rs.getString("inTitle"));
				vo.setInScore(rs.getInt("inScore"));
				vo.setInPhoto(rs.getString("inPhoto"));
				vo.setInDate(rs.getString("inDate"));
				vo.setInOpen(rs.getString("inOpen"));
				vo.setInMark(rs.getString("inMark"));
				vo.setInCpStt(rs.getString("inCpStt"));
				vo.setInCpCnt(rs.getInt("inCpCnt"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			rsClose();
		}
		return vos;
	}
	
	
	public ScribbleVO getAllScribbleList() {
		vo = new ScribbleVO();
		
		return null;
	}
	
	// open설정+오늘 DB만 출력
	public ArrayList<ScribbleVO> getOpenScribbleList() {
		ArrayList<ScribbleVO> vos = new ArrayList<ScribbleVO>();
		try {
			sql = "select * from scribble where inOpen='YES' order by inIdx desc";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ScribbleVO();
				vo.setInIdx(rs.getInt("inIdx"));
				vo.setInMid(rs.getString("inMid"));
				vo.setInCtg(rs.getString("inCtg"));
				vo.setInTitle(rs.getString("inTitle"));
				vo.setInScore(rs.getInt("inScore"));
				vo.setInPhoto(rs.getString("inPhoto"));
				vo.setInDate(rs.getString("inDate"));
				vo.setInOpen(rs.getString("inOpen"));
				vo.setInMark(rs.getString("inMark"));
				vo.setInCpStt(rs.getString("inCpStt"));
				vo.setInCpCnt(rs.getInt("inCpCnt"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			rsClose();
		}
		return vos;
	}
	
	// 신고된 글의 신고횟수 증가
	public int setReportComplaint(int cpMemoIdx) {
		int res2 = 0;
		try {
			sql = "update scribble set inCpCnt=inCpCnt+1 where inIdx = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cpMemoIdx);
			res2 = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			pstmtClose();
		}
		return res2;
	}
	
	// 쪽지 책갈피 처리
	public int setBookmark(int inIdx) {
		int res = 0;
		try {
			sql = "update scribble set inMark='YES' where inIdx=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inIdx);
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			pstmtClose();
		}
		return res;
	}
	
	//쪽지 공개처리
	public int setOpenMemo(int inIdx) {
		int res = 0;
		try {
			sql = "update scribble set inOpen='YES' where inIdx=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inIdx);
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			pstmtClose();
		}
		return res;
	}
	
	//책갈피 메모민 출력
	public ArrayList<ScribbleVO> getBookMarkList(String sAmid) {
		ArrayList<ScribbleVO> vos = new ArrayList<ScribbleVO>();
		try {
			sql = "select * from scribble where inMark='YES'and inMid=? order by inIdx desc";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sAmid);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ScribbleVO();
				vo.setInIdx(rs.getInt("inIdx"));
				vo.setInMid(rs.getString("inMid"));
				vo.setInCtg(rs.getString("inCtg"));
				vo.setInTitle(rs.getString("inTitle"));
				vo.setInScore(rs.getInt("inScore"));
				vo.setInPhoto(rs.getString("inPhoto"));
				vo.setInDate(rs.getString("inDate"));
				vo.setInOpen(rs.getString("inOpen"));
				vo.setInMark(rs.getString("inMark"));
				vo.setInCpStt(rs.getString("inCpStt"));
				vo.setInCpCnt(rs.getInt("inCpCnt"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			rsClose();
		}
		return vos;
	}
	
	//메모삭제하기
	public int setDeleteMemo(int inIdx) {
		int res = 0;
		try {
			sql = "delete from scribble where inIdx=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, inIdx);
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SQL 오류: "+e.getMessage());
		}finally {
			pstmtClose();
		}
		return res;
	}
	
	
	
	
	
}
