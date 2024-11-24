package about.scribble;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import about.AboutInterface;

public class DeleteMemoCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int inIdx = (request.getParameter("inIdx")==null ||request.getParameter("inIdx").equals("")) ? 0 : Integer.parseInt(request.getParameter("inIdx"));

		ScribbleDAO dao = new ScribbleDAO();
		
		int res = dao.setDeleteMemo(inIdx);
		
		response.getWriter().write(res + "");	
	}
}
