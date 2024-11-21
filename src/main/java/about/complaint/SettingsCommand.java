package about.complaint;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;
import about.memberData.AboutMemberDAO;
import about.memberData.AboutMemberVO;
import about.scribble.ScribbleDAO;
import about.scribble.ScribbleVO;

public class SettingsCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String aMid = (String)session.getAttribute("sAmid");
		//System.out.println("aMid   "+aMid);
		
		AboutMemberDAO aDao = new AboutMemberDAO();
		AboutMemberVO aVo = aDao.getMemberIdCheck(aMid);

		//ScribbleDAO sDao = new ScribbleDAO();
		//ScribbleVO sVos = sDao.getAllScribbleList();
		
		//System.out.println("aVo   "+aVo);
		//System.out.println("sVos   "+sVos);
		request.setAttribute("aVo", aVo);

	}

}
