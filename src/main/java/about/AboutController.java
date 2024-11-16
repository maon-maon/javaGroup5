package about;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.login.LoginOkCommand;
import about.memberData.JoinOkCommand;

@SuppressWarnings("serial")
@WebServlet("*.me")
public class AboutController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AboutInterface command = null;
		String viewPage = "/WEB-INF/about/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/"),com.lastIndexOf("."));
		//System.out.println("com.substr    "+com);
		
		
		if(com.equals("/Join")) {
			viewPage += "join.jsp";
		}
		else if(com.equals("/JoinOk")) {
			command = new JoinOkCommand(); //about.memberData
			command.execute(request, response);
			viewPage += "myPage.jsp";
		}
		else if(com.equals("/LoginOk")) {
			command = new LoginOkCommand(); //about.login
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/Login")) { //메인 컨트롤러에서 작동//about.login
			viewPage += "myPage.jsp";
		}
		else if(com.equals("/FindMidPwd.me")) { //아이디/비번찾기
			//command = new FindMidPwd.meCommand(); //about.memberData
			command.execute(request, response);
			viewPage += "";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
