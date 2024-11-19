package about.memberData;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;
import about.AboutMemberDAO;

public class MemberUpdateCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String aMid = (String)session.getAttribute("sAmid");
		//System.out.println("aMid   "+aMid);
		
		AboutMemberDAO dao = new AboutMemberDAO();
		
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		request.setAttribute("vo", vo);
		
	}

}
