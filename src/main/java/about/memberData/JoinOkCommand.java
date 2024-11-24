package about.memberData;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;
import common.SecurityUtil;

public class JoinOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aMid = request.getParameter("aMid")==null? "" : request.getParameter("aMid");
		String aPwd = request.getParameter("aPwd")==null? "" : request.getParameter("aPwd");
		String aNickName = request.getParameter("aNickName")==null? "" : request.getParameter("aNickName");
		String aPhoto = request.getParameter("aPhoto")==null? "" : request.getParameter("aPhoto");
		String aAnl = request.getParameter("aAnl")==null? "" : request.getParameter("aAnl");
		if(aPhoto.equals("")) {
			aPhoto = "logo.png";
		}
		
		String salt = UUID.randomUUID().toString().substring(0,8);
		
		SecurityUtil security = new SecurityUtil();
		aPwd = security.encryptSHA256(salt+aPwd);
		aPwd = salt + aPwd;
		
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
