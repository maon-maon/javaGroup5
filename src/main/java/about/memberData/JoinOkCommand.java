package about.memberData;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;
import about.AboutMemberDAO;

public class JoinOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aMid = request.getParameter("aMid")==null? "" : request.getParameter("aMid");
		String aPwd = request.getParameter("aMid")==null? "" : request.getParameter("aMid");
		String aNickName = request.getParameter("aNickName")==null? "" : request.getParameter("aNickName");
		String aPhoto = request.getParameter("aNickName")==null? "" : request.getParameter("aNickName");
		String aAnl = request.getParameter("aNickName")==null? "" : request.getParameter("aNickName");
		if(aPhoto.equals("")) {
			aPhoto = "logo.png";
		}
		
		AboutMemberVO vo = new AboutMemberVO();
		vo.setaMid(aMid);
		vo.setaPwd(aPwd);
		vo.setaNickName(aNickName);
		vo.setaPhoto(aPhoto);
		vo.setaAnl(aAnl);

		AboutMemberDAO dao = new AboutMemberDAO();
		int res = dao.setJoinOk(vo);

		if(res != 0) {
			request.setAttribute("message", "회원가입 되었습니다.");
			request.setAttribute("url", "main");
		}
		else {
			request.setAttribute("message", "회원가입에 실패하였습니다.");
			request.setAttribute("url", "Join.me");
		}
		
	}

}
