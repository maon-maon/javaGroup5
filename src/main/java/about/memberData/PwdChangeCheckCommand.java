package about.memberData;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import about.AboutInterface;
import about.AboutMemberDAO;

public class PwdChangeCheckCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aPwd = request.getParameter("aPwd")==null ? "" : request.getParameter("aPwd");
		
		HttpSession session = request.getSession();
		String aMid = (String)session.getAttribute("sAmid");
		
		AboutMemberDAO dao = new AboutMemberDAO();
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		String str = "";
		if(vo.getaPwd().equals(aPwd)) str = "1";		
		else str = "0";		
		
		response.getWriter().write(str);
	}

}
