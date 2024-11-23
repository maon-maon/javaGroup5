package about;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.admin.ComplaintListCommand;
import about.admin.ComplaintMemoCommand;
import about.admin.ComplaintUserCommand;
import about.admin.DashboardCommand;
import about.admin.NoticeUpdateCommand;
import about.complaint.UserComplaintOkCommand;
import about.complaint.ReportComplaintOkCommand;
import about.complaint.SettingsCommand;
import about.login.FindMidPwdCommand;
import about.login.FindMidPwdOkCommand;
import about.login.LogOutCommand;
import about.login.LoginCommand;
import about.login.LoginOkCommand;
import about.memberData.JoinBtnCheckCommand;
import about.memberData.JoinOkCommand;
import about.memberData.MemberUpdateCommand;
import about.memberData.MemberUpdateOkCommand;
import about.memberData.PwdVerifyCheckCommand;
import about.scribble.BookMarkCommand;
import about.scribble.BookmarkingCommand;
import about.scribble.DeleteMemoCommand;
import about.scribble.HomeCommand;
import about.scribble.MyPageCommand;
import about.scribble.OpenMemoCommand;
import about.scribble.ScribblingCommand;
import about.scribble.ScribblingOkCommand;
import about.scribble.StrangersMemoCommand;
import about.scribble.modifyMemoCommand;

@SuppressWarnings("serial")
@WebServlet("*.me")
public class AboutController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AboutInterface command = null;
		String viewPage = "/WEB-INF/about/";
		
		String com = request.getRequestURI();
		com = com.substring(com.lastIndexOf("/"),com.lastIndexOf("."));
		
		if(com.equals("/Main")) {
			command = new LoginCommand();
			command.execute(request, response);
			viewPage += "main.jsp";
		}
		else if(com.equals("/Join")) {
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
			viewPage = "Main.me";
		}
		else if(com.equals("/LoginOk")) {
			command = new LoginOkCommand(); //about.login
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/Home")) {
			command = new HomeCommand();
			command.execute(request, response);
			viewPage += "home.jsp";
		}
		else if(com.equals("/MyPage")) {
			command = new MyPageCommand();
			command.execute(request, response);
			viewPage += "myPage.jsp";
		}
		else if(com.equals("/Settings")) { //메인 컨트롤러에서 작동//about.login
			command = new SettingsCommand();
			command.execute(request, response);
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
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/Scribbling")) {
			command = new ScribblingCommand();
			command.execute(request, response);
			viewPage += "scribbling.jsp";
		}
		else if(com.equals("/ScribblingOk")) {
			command = new ScribblingOkCommand();
			command.execute(request, response);
			viewPage = "/include/message.jsp";
		}
		else if(com.equals("/MeAnalysis")) {
			command = new ScribblingCommand();
			command.execute(request, response);
			viewPage += "meAnlysis.jsp";
		}
		else if(com.equals("/MemoAnalysis")) {
			viewPage += "memoAnalysis.jsp";
		}
		else if(com.equals("/UserComplaintOk")) {
			command = new UserComplaintOkCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/Dashboard")) {
			command = new DashboardCommand();
			command.execute(request, response);
			viewPage += "dashboard.jsp";
		}
		else if(com.equals("/ComplaintList")) {
			command = new ComplaintListCommand();
			command.execute(request, response);
			viewPage += "complaintList.jsp";
		}
		else if(com.equals("/ComplaintUser")) {
			command = new ComplaintUserCommand();
			command.execute(request, response);
			viewPage += "complaintUser.jsp";
		}
		else if(com.equals("/ComplaintMemo")) {
			command = new ComplaintMemoCommand();
			command.execute(request, response);
			viewPage += "complaintMemo.jsp";
		}
		else if(com.equals("/NoticeUpdate")) {
			command = new NoticeUpdateCommand();
			command.execute(request, response);
			viewPage += "noticeUpdate.jsp";
		}
		else if(com.equals("/FindMidPwd")) { //아이디/비번찾기
			//command = new FindMidPwdCommand();
			//command.execute(request, response);
			viewPage += "findMidPwd.jsp";
		} 
		else if(com.equals("/FindMidPwdOk")) {
			command = new FindMidPwdOkCommand();
			command.execute(request, response);
			viewPage = "main";
		} 
		else if(com.equals("/StrangersMemo")) { 
			command = new StrangersMemoCommand();
			command.execute(request, response);
			viewPage += "strangersMemo.jsp";
		} 
		else if(com.equals("/ReportComplaintOk")) {
			command = new ReportComplaintOkCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/Bookmarking")) {
			command = new BookmarkingCommand();
			command.execute(request, response);
			return;
		}
		else if(com.equals("/BookMark")) { 
			command = new BookMarkCommand();
			command.execute(request, response);
			viewPage += "bookMark.jsp";
		} 
		else if(com.equals("/OpenMemo")) {
			command = new OpenMemoCommand();
			command.execute(request, response);
			return;
		}
//		else if(com.equals("/modifyMemo")) {
//			command = new modifyMemoCommand();
//			command.execute(request, response);
//			viewPage += "modifyMemo.jsp";
//		}
		else if(com.equals("/DeleteMemo")) {
			command = new DeleteMemoCommand();
			command.execute(request, response);
			return;
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
