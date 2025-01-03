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
import about.memberData.AboutMemberDAO;
import about.memberData.AboutMemberVO;
import common.SecurityUtil;

public class LoginOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aMid = request.getParameter("aMid")==null ? "" : request.getParameter("aMid");
		String aPwd = request.getParameter("aPwd")==null ? "" : request.getParameter("aPwd");
		String rememberMid = request.getParameter("rememberMid")==null ? "false" : "true";
		
		AboutMemberDAO dao = new AboutMemberDAO();
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		String salt = vo.getaPwd().substring(0,8);
		
		SecurityUtil security = new SecurityUtil();
		aPwd = (security.encryptSHA256(salt+aPwd));
		
		if(!vo.getaPwd().substring(8).equals(aPwd)) {
			request.setAttribute("message", "입력하신 회원정보가 없습니다. \\n다시 확인하여 주시거나, 아이디/비밀번호를 찾기를 이용해주세요.");
			request.setAttribute("url", "Main.me");
			return;
		}
		
		Cookie cookieAmid = new Cookie("cAmid", aMid);
		Cookie cookieRememberMid = new Cookie("cRememberMid", rememberMid);
		Cookie cookieLogin = new Cookie("cLogin", "on");
		cookieAmid.setPath("/");
		if(rememberMid.equals("true")) {
			cookieAmid.setMaxAge(60*60*24*7);
			cookieRememberMid.setMaxAge(60*60*24*7);
			cookieLogin.setMaxAge(60*60*24*7);
		}
		else {
			cookieAmid.setMaxAge(0);
			cookieRememberMid.setMaxAge(0);
			cookieLogin.setMaxAge(0);
		}
		response.addCookie(cookieAmid);
		response.addCookie(cookieRememberMid);
		response.addCookie(cookieLogin);
		
		HttpSession session = request.getSession();
		session.setAttribute("sAmid", aMid);
		
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String today = dateFormat.format(date);
		String aVisitD = vo.getaVisitD().substring(0,10);
		
		if(!today.equals(aVisitD)) {
			vo.setaVisitCnt(vo.getaVisitCnt()+1);
			dao.setUserInfoUpdate(vo);
		}
		
		request.setAttribute("message", aMid+"님 새로운 쪽지를 남겨주세요");
		request.setAttribute("url", "Home.me");
	}
}
