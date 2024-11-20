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
		//System.out.println("aMid   "+aMid);
		
		AboutMemberDAO dao = new AboutMemberDAO();
		
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		//System.out.println("날짜 "+vo.getaVisitD());
		
		LocalDateTime date = LocalDateTime.now();
		String today = date.toString().substring(0, 10);
		String yesterday = date.minusHours(24).toString().substring(0, 19).replace("T", " ");
		//System.out.println("BoardInputOkComman today: "+today);
		//System.out.println("BoardInputOkComman yesterday: "+yesterday);
		
		request.setAttribute("today", today); 
		request.setAttribute("yesterday", yesterday); 
		//HttpSession session = request.getSession();
		//session.setAttribute("sToday", today);
		
		
		request.setAttribute("vo", vo);

	}

}
