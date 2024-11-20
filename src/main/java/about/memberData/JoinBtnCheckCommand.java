package about.memberData;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;

public class JoinBtnCheckCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aMid = request.getParameter("aMid")==null? "" : request.getParameter("aMid");
		String aNickName = request.getParameter("aNickName")==null? "" : request.getParameter("aNickName");

		String strCheck = "";
		if(aMid != "") {
			strCheck = aMid;
		}
		else if(aNickName != ""){
			strCheck = aNickName+"_aNickName";
		}
		
		AboutMemberDAO dao = new AboutMemberDAO();
		
		AboutMemberVO vo = dao.getJoinBtnCheck(strCheck);
		
		String res = "0";
		if(vo.getaMid() != null && !vo.getaMid().equals("")) {
			res = "1";
		}
		
		response.getWriter().write(res);
	}
}
