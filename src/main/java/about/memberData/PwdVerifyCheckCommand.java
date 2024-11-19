package about.memberData;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import about.AboutInterface;
import about.AboutMemberDAO;
import common.SecurityUtil;

public class PwdVerifyCheckCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aPwd = request.getParameter("aPwd")==null ? "" : request.getParameter("aPwd");
		//System.out.println("aPwd   "+aPwd);
		HttpSession session = request.getSession();
		String aMid = (String)session.getAttribute("sAmid");
		
		AboutMemberDAO dao = new AboutMemberDAO();
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		String salt = vo.getaPwd().substring(0,8);
		
		SecurityUtil security = new SecurityUtil();
		aPwd = security.encryptSHA256(salt+aPwd);
		
		String str = "";
		if(vo.getaPwd().substring(8).equals(aPwd)) str = "1";
		else str = "0";		
		
		response.getWriter().write(str);
	}
}
