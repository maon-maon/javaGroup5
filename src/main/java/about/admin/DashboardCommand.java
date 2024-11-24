package about.admin;

import java.io.IOException;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;
import about.memberData.AboutMemberDAO;
import about.memberData.AboutMemberVO;

public class DashboardCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String aMid = (String)session.getAttribute("sAmid");
		
		AboutMemberDAO dao = new AboutMemberDAO();
		AboutMemberVO vo = dao.getMemberIdCheck(aMid);
		
		Calendar calToday = Calendar.getInstance();
		int toYear = calToday.get(Calendar.YEAR);
		int toMonth = calToday.get(Calendar.MONTH);
		int toDay = calToday.get(Calendar.DATE);
		
		int yy = request.getParameter("yy")==null ? toYear : Integer.parseInt(request.getParameter("yy"));
		int mm = request.getParameter("mm")==null ? toMonth : Integer.parseInt(request.getParameter("mm"));
		
		if(mm < 0) {
			yy--;
			mm = 11;
		}
		if(mm > 11) {
			yy++;
			mm = 0;
		}
		
		calToday.set(yy, mm, 1); //오늘날짜를 셋팅:받은연월로 셋팅 시작일은1
		
		int lastDay = calToday.getActualMaximum(Calendar.DAY_OF_MONTH); 
		int startWeek = calToday.get(Calendar.DAY_OF_WEEK);
		
		request.setAttribute("vo", vo);
		
		request.setAttribute("yy", yy);
		request.setAttribute("mm", mm);
		request.setAttribute("startWeek", startWeek);
		request.setAttribute("lastDay", lastDay);
		
		request.setAttribute("toYear", toYear);
		request.setAttribute("toMonth", toMonth);
		request.setAttribute("toDay", toDay);
	}
}
