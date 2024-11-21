package about.complaint;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;
import about.memberData.AboutMemberDAO;
import about.memberData.AboutMemberVO;

public class ComplaintOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpCtg = request.getParameter("cpCtg")==null ? "" : request.getParameter("cpCtg");
		String cpContent = request.getParameter("cpContent")==null ? "" : request.getParameter("cpContent");
		String cpMid = request.getParameter("cpMid")==null ? "" : request.getParameter("cpMid");

		ComplaintVO vo = new ComplaintVO();
		ComplaintDAO dao = new ComplaintDAO();
		
		vo.setCpCtg(cpCtg);
		vo.setCpContent(cpContent);
		vo.setCpMid(cpMid);
		
		int res = dao.setUserComplaint(vo);
		
		if(cpCtg.equals("탈퇴신청")) {
			AboutMemberDAO aDao = new AboutMemberDAO();
			int res2 = aDao.setUserLevel(cpMid);
			if(res == res2) res = 1;
		}
		
		//System.out.println("resresres :  "+res);
		response.getWriter().write(res+"");
		
	}

}
