package about.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;

public class LogOutCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String aMid = session.getAttribute("sAmid").toString();
		
		session.invalidate();
		
		request.setAttribute("message", aMid+"님의 메모가 다시 오시길 기다릴거에요");
		request.setAttribute("url", "Main.me");

	}

}
