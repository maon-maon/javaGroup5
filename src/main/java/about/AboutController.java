package about;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.join.JoinOkCommand;
import about.login.LoginOkCommand;

@SuppressWarnings("serial")
@WebServlet("*.me")
public class AboutController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AboutInterface command = null;
		String viewPage = "/WEB-INF/about/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/"),com.lastIndexOf("."));
		System.out.println("com.substr    "+com);
		
		
		if(com.equals("/Join")) {
			viewPage += "join.jsp";
		}
		else if(com.equals("/JoinOk")) {
			command = new JoinOkCommand();
			command.execute(request, response);
			viewPage += "myPage.jsp";
		}
		else if(com.equals("/Login")) {
			command = new LoginOkCommand();
			command.execute(request, response);
			viewPage += "myPage.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
