package about.login;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;
import about.AboutMemberDAO;
import about.memberData.AboutMemberVO;

public class LoginOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aMid = request.getParameter("aMid")==null ? "" : request.getParameter("aMid");
		String aPwd = request.getParameter("aPwd")==null ? "" : request.getParameter("aPwd");
		String rememberMid = request.getParameter("rememberMid")==null ? "off" : "on";

		AboutMemberDAO dao = new AboutMemberDAO();
		
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		
		
		// 쿠키 저장 처리
		Cookie cookieAmid = new Cookie("cMid", aMid);
		cookieAmid.setPath("/");
		if(rememberMid.equals("on")) {
			cookieAmid.setMaxAge(60*60*24*7);
		}
		else {
			cookieAmid.setMaxAge(0);
		}
		response.addCookie(cookieAmid);
		
		// 세션 저장 처리
		HttpSession session = request.getSession();
		session.setAttribute("sAmid", aMid);
		
		// 접속 날짜
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String today = dateFormat.format(date);
		//방문카운트 1회 증가
		if(!today.equals(vo.getaVisitD())) {
			vo.setaVisitCnt(vo.getaVisitCnt()+1);
		}

	}
}
