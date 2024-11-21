package about.complaint;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.GetConn;

public class ComplaintDAO {
	private Connection conn = GetConn.getConn();
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	String sql = "";
	ComplaintVO vo = null;
	
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
	
	// 회원 문의 DB에 저장
	public int setUserComplaint(ComplaintVO vo) {
		int res = 0;
		try {
			sql = "insert into complaint values(default, ?,?,?, default,default,default,default)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getCpMid());
			pstmt.setString(2, vo.getCpCtg());
			pstmt.setString(3, vo.getCpContent());
			res = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("SLQ 오류 " +e.getMessage());
		} finally {
			pstmtClose();
		}
		return res;
	}
	
	// 컴플레인 전체 자료 불러오기
	public List<ComplaintVO> getAllComplaintList() {
		List<ComplaintVO> vos = new ArrayList<ComplaintVO>();
		try {
			sql = "select * from complaint";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ComplaintVO();
				vo.setCpIdx(rs.getInt("cpIdx"));
				vo.setCpMid(rs.getString("cpMid"));
				vo.setCpCtg(rs.getString("cpCtg"));
				vo.setCpContent(rs.getString("cpContent"));
				vo.setCpMemoIdx(rs.getInt("cpMemoIdx"));
				vo.setCpMemoTitle(rs.getString("cpMemoTitle"));
				vo.setCpDate(rs.getString("cpDate"));
				vo.setCpCnt(rs.getInt("cpCnt"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SLQ 오류 " +e.getMessage());
		} finally {
			rsClose();
		}
		return vos;
	}
	
	// 회원 문의글 불러오기
	/*public List<ComplaintVO> getComplaintUserList() {
		List<ComplaintVO> vos = new ArrayList<ComplaintVO>();
		try {
			sql = "select * from complaint where cpCnt=0";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ComplaintVO();
				vo.setCpIdx(rs.getInt("cpIdx"));
				vo.setCpMid(rs.getString("cpMid"));
				vo.setCpCtg(rs.getString("cpCtg"));
				vo.setCpContent(rs.getString("cpContent"));
				vo.setCpDate(rs.getString("cpDate"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SLQ 오류 " +e.getMessage());
		} finally {
			rsClose();
		}
		return vos;
	}*/
	
	// 총 게시물 숫자 1:회원문의2:신고글
	public int getTotRecCnt(int num) {
		int totRecCnt = 0;
		try {
			if(num == 1) {
				sql = "select count(*) as totRecCnt from complaint where cpCnt=0";
			}
			else if(num == 2) {
				sql = "select count(*) as totRecCnt from complaint where cpCnt>=1";
			}
			else {
				sql = "select count(*) as totRecCnt from complaint";
			}
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			rs.next();
			totRecCnt = rs.getInt("totRecCnt");
		} catch (SQLException e) {
			System.out.println("SLQ 오류 " +e.getMessage());
		} finally {
			rsClose();
		}
		return totRecCnt;
	}
	
	// 시작인덱스와 페이지사이즈에 맞게 DB에서 자료 가져오기
	public List<ComplaintVO> getComplaintList(int startIndexNo, int pageSize, int num) {
		List<ComplaintVO> vos = new ArrayList<ComplaintVO>();
		try {
			if(num == 1) {
				sql = "select * from complaint where cpCnt=0 order by cpIdx desc limit ?,?";
			}
			else if(num == 2) {
				sql = "select * from complaint where cpCnt>=1 order by cpIdx desc limit ?,?";
			}
			else {
				sql = "select * from complaint order by cpIdx desc limit ?,?";
			}
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, startIndexNo);
			pstmt.setInt(2, pageSize);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo = new ComplaintVO();
				vo.setCpIdx(rs.getInt("cpIdx"));
				vo.setCpMid(rs.getString("cpMid"));
				vo.setCpCtg(rs.getString("cpCtg"));
				vo.setCpContent(rs.getString("cpContent"));
				vo.setCpMemoIdx(rs.getInt("cpMemoIdx"));
				vo.setCpMemoTitle(rs.getString("cpMemoTitle"));
				vo.setCpDate(rs.getString("cpDate"));
				vo.setCpCnt(rs.getInt("cpCnt"));
				vos.add(vo);
			}
		} catch (SQLException e) {
			System.out.println("SLQ 오류 " +e.getMessage());
		} finally {
			rsClose();
		}
		return vos;
	}
	
	
	
	
	
}
