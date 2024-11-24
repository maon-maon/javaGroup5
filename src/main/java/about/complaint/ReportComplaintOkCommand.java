package about.complaint;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;
import about.memberData.AboutMemberDAO;
import about.scribble.ScribbleDAO;

public class ReportComplaintOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpCtg = request.getParameter("cpCtg")==null ? "" : request.getParameter("cpCtg");
		String cpContent = request.getParameter("cpContent")==null ? "" : request.getParameter("cpContent");
		String cpMid = request.getParameter("cpMid")==null ? "" : request.getParameter("cpMid");
		int cpMemoIdx = (request.getParameter("cpMemoIdx")==null || request.getParameter("cpMemoIdx").equals("")) ? 0 : Integer.parseInt(request.getParameter("cpMemoIdx"));

		ComplaintVO vo = new ComplaintVO();
		ComplaintDAO dao = new ComplaintDAO();
		
		vo.setCpMid(cpMid);
		vo.setCpCtg(cpCtg);
		vo.setCpContent(cpContent);
		vo.setCpMemoIdx(cpMemoIdx);
		
		int res = dao.setReportComplaint(vo);
		
		ScribbleDAO sDao = new ScribbleDAO();
		int res2 = sDao.setReportComplaint(cpMemoIdx);
		if(res==1 && res2==1) res = 1;
		
		response.getWriter().write(res+"");
	}
}
