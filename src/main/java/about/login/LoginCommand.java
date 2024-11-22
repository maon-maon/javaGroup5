package about.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import about.AboutInterface;

public class LoginCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 아이디저장 체크시 쿠키에서 값 가져오기
		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals("cAmid")) {
					request.setAttribute("cAmid", cookies[i].getValue());
					//System.out.println("cookies[i].getValue() : "+cookies[i].getValue() );
					request.setAttribute("cRememberMid", "true");
					request.setAttribute("cLogin", "on");
					break;
				}
			}
		}
	}
}
