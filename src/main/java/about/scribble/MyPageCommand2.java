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
		
		//데이터베이스 연동 값 가져오기
		HttpSession session = request.getSession();
		String sAmid = (String)session.getAttribute("sAmid");
		
		ScribbleDAO dao = new ScribbleDAO();
		
		ArrayList<ScribbleVO> vos = dao.getScribbleList(sAmid);
		
		//System.out.println("vos.get(0): "+vos);
		
		request.setAttribute("vos", vos);
		
		// 오늘날짜 저장
		Calendar calToday = Calendar.getInstance();
		int toYear = calToday.get(Calendar.YEAR);
		int toMonth = calToday.get(Calendar.MONTH);
		int toDay = calToday.get(Calendar.DATE);
		
		// 화면에 보여주는 '년/월' 셋팅
		int yy = request.getParameter("yy")==null ? toYear : Integer.parseInt(request.getParameter("yy"));
		int mm = request.getParameter("mm")==null ? toMonth : Integer.parseInt(request.getParameter("mm"));
		// 넘어온 값이 없으면 캘린더에서 불러온 오늘 날짜를 가져옴
		
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

    // 이번 주의 시작 요일 설정
		calToday.set(Calendar.DAY_OF_WEEK, calToday.getFirstDayOfWeek());
    Date weeksta = calToday.getTime();
    System.out.println("weeksta: " + weeksta);
    
    // 이번 주의 끝 요일 설정 (일요일)
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
    
    
    
    // 화면에 보여주는 달력변수 저장
 		request.setAttribute("yy", yy);
 		request.setAttribute("mm", mm);
 		
 		// 오늘날짜 저장
 		request.setAttribute("toYear", toYear);
 		request.setAttribute("toMonth", toMonth);
 		request.setAttribute("toDay", toDay);
 		
 		// 이번주 저장
 		request.setAttribute("weekEndStr", weekEndStr);
 		request.setAttribute("weekstaStr", weekstaStr);
 		
	}
}
