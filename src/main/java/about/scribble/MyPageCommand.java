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

public class MyPageCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Calendar calendar = Calendar.getInstance();
    
    calendar.setFirstDayOfWeek(Calendar.MONDAY);

    int currentDayOfWeek = calendar.get(Calendar.DAY_OF_WEEK);
    calendar.add(Calendar.DAY_OF_WEEK, -currentDayOfWeek + 1); 
          
    String today = LocalDate.now().toString().substring(8, 10);
		
		HttpSession session = request.getSession();
		String sAmid = (String)session.getAttribute("sAmid");
		
		ScribbleDAO dao = new ScribbleDAO();
		ArrayList<ScribbleVO> vos = dao.getScribbleList(sAmid);
		
		request.setAttribute("vos", vos);
    request.setAttribute("dd", calendar.get(Calendar.DAY_OF_MONTH));
    request.setAttribute("today", today);
    
	}
}
