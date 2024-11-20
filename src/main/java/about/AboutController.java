package about;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.login.LogOutCommand;
import about.login.LoginOkCommand;
import about.memberData.JoinBtnCheckCommand;
import about.memberData.JoinOkCommand;
import about.memberData.MemberUpdateCommand;
import about.memberData.MemberUpdateOkCommand;
import about.memberData.PwdVerifyCheckCommand;
import about.scribble.MyPageCommand;
import about.scribble.ScribblingCommand;
import about.scribble.ScribblingOkCommand;

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
		else if(com.equals("/JoinBtnCheck")) {
			command = new JoinBtnCheckCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/JoinOk")) {
			command = new JoinOkCommand(); //about.memberData
			command.execute(request, response);
			viewPage = "main";
		}
		else if(com.equals("/LoginOk")) {
			command = new LoginOkCommand(); //about.login
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MyPage")) {
			command = new MyPageCommand();
			command.execute(request, response);
			viewPage += "myPage.jsp";
		}
		else if(com.equals("/Settings")) { //메인 컨트롤러에서 작동//about.login
			viewPage += "setting.jsp";
		}
		else if(com.equals("/MemberVerify")) {
			viewPage += "memberVerify.jsp";
		}
		else if(com.equals("/PwdVerifyCheck")) {
			command = new PwdVerifyCheckCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/MemberUpdate")) {
			command = new MemberUpdateCommand();
			command.execute(request, response);
			viewPage += "memberUpdate.jsp";
		}
		else if(com.equals("/MemberUpdateOk")) {
			command = new MemberUpdateOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/LogOut")) {
			command = new LogOutCommand();
			command.execute(request, response);
			viewPage = "main";
		}
		else if(com.equals("/Scribbling")) {
			command = new ScribblingCommand();
			command.execute(request, response);
			viewPage += "scribbling .jsp";
		}
		else if(com.equals("/ScribblingOk")) {
			command = new ScribblingOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MemoAnalysis")) {
			viewPage += "memoAnalysis.jsp";
		}
		
		
		
		/*
		else if(com.equals("/FindMidPwd.me")) { //아이디/비번찾기
			//command = new FindMidPwd.meCommand(); //about.memberData
			command.execute(request, response);
			viewPage += "";
		} */
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
