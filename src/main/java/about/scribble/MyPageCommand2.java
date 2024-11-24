package about.scribble;

import java.io.IOException;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;

public class MyPageCommand2 implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String sAmid = (String)session.getAttribute("sAmid");
		
		ScribbleDAO dao = new ScribbleDAO();
		ArrayList<ScribbleVO> vos = dao.getScribbleList(sAmid);
		
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
		
		int currWeek = calToday.get(Calendar.DAY_OF_WEEK_IN_MONTH);
		System.out.println("currWeek: "+currWeek);
		int currWeek1 = calToday.get(Calendar.WEEK_OF_YEAR);
		System.out.println("currWeek1: "+currWeek1);
		int currWeek2 = calToday.get(Calendar.DAY_OF_WEEK_IN_MONTH);
		System.out.println("currWeek2: "+currWeek2);
		
		calToday.setFirstDayOfWeek(Calendar.SUNDAY); // 한 주의 시작을 월요일로 설정

		calToday.set(Calendar.DAY_OF_WEEK, calToday.getFirstDayOfWeek());
    Date weeksta = calToday.getTime();
    System.out.println("weeksta: " + weeksta);
    
    calToday.add(Calendar.DATE, 6);
    Date weekEnd = calToday.getTime();
    System.out.println("weekEnd: " + weekEnd);

    String weekstaStr = weeksta.toString().substring(8,11);
    String weekEndStr = weekEnd.toString().substring(8,11);
    System.out.println("weekstaStr: " + weekstaStr);
    System.out.println("weekEndStr: " + weekEndStr);
    
    LocalDate today = LocalDate.now();
    DayOfWeek dayOfWeek = today.getDayOfWeek();
    System.out.println("dayOfWeek: "+dayOfWeek);
    LocalDateTime atStartOfDay = today.atStartOfDay();
    System.out.println("atStartOfDay: "+atStartOfDay);
    int getDayOfMonth = today.getDayOfMonth();
    System.out.println("getDayOfMonth: "+getDayOfMonth);
    
    request.setAttribute("vos", vos);
    
 		request.setAttribute("yy", yy);
 		request.setAttribute("mm", mm);
 		
 		request.setAttribute("toYear", toYear);
 		request.setAttribute("toMonth", toMonth);
 		request.setAttribute("toDay", toDay);
 		
 		request.setAttribute("weekEndStr", weekEndStr);
 		request.setAttribute("weekstaStr", weekstaStr);
	}
}
