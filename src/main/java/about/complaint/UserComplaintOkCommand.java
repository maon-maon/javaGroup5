package about.complaint;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;
import about.memberData.AboutMemberDAO;

public class UserComplaintOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpCtg = request.getParameter("cpCtg")==null ? "" : request.getParameter("cpCtg");
		String cpContent = request.getParameter("cpContent")==null ? "" : request.getParameter("cpContent");
		String cpMid = request.getParameter("cpMid")==null ? "" : request.getParameter("cpMid");
		System.out.println("cpMid:  "+cpMid);

		ComplaintVO vo = new ComplaintVO();
		ComplaintDAO dao = new ComplaintDAO();
		
		vo.setCpCtg(cpCtg);
		vo.setCpContent(cpContent);
		vo.setCpMid(cpMid);
		
		int res = dao.setUserComplaint(vo);
		
		System.out.println("cpCtg:  "+cpCtg);
		if(cpCtg.equals("탈퇴신청")) {
			AboutMemberDAO aDao = new AboutMemberDAO();
			int res2 = aDao.setUserLevel(cpMid);
			if(res==1 && res2==1) res = 1;
		}
		
		response.getWriter().write(res+"");
		
		
	}

}
