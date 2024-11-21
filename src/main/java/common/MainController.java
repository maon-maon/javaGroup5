package common;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;
import about.login.LoginCommand;

@WebServlet({"/MAIN", "/m","/h","/home","/H","/HOME"})
public class MainController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request , HttpServletResponse response ) throws ServletException, IOException {
		AboutInterface command = new LoginCommand();
		command.execute(request, response);
		
		String viewPage = "";
		
//		HttpSession session = request.getSession();
//		String sLogin = (String)session.getAttribute("sLogin");
//		if(sLogin.equals("on")) {
//			viewPage = "MyPage.me";
//		}
//		else {
//		}
		viewPage = "/WEB-INF/main/main.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
