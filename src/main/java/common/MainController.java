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

@WebServlet({"/MAIN", "/main","/h","/home","/H","/HOME"})
public class MainController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request , HttpServletResponse response ) throws ServletException, IOException {
		
		String viewPage = "";
		
		viewPage = "/WEB-INF/main/main.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
