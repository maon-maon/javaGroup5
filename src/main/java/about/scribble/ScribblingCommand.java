package about.scribble;

import java.io.IOException;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;
import about.memberData.AboutMemberDAO;
import about.memberData.AboutMemberVO;

public class ScribblingCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String aMid = (String)session.getAttribute("sAmid");
		
		AboutMemberDAO dao = new AboutMemberDAO();
		
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		LocalDateTime date = LocalDateTime.now();
		String today = date.toString().substring(0, 10);
		String yesterday = date.minusHours(24).toString().substring(0, 19).replace("T", " ");
		
		request.setAttribute("today", today); 
		request.setAttribute("yesterday", yesterday); 
		request.setAttribute("vo", vo);
	}
}
