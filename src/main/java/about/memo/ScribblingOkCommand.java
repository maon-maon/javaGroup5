package about.memo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;

public class ScribblingOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setAttribute("message", "쪽지가 수첩에 들어갔습니다.");
		request.setAttribute("url", "Scribbling.me");

	}

}
