package about.memberData;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import about.AboutInterface;
import common.SecurityUtil;

public class MemberUpdateOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String realPath = request.getServletContext().getRealPath("/images/imgData/");
		int maxSize = 1024*1024*2;
		String encoding = "UTF-8";
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
	
		String filesystemName = multipartRequest.getFilesystemName("aPhoto");

		String aMid = (multipartRequest.getParameter("OaMid")==null)? "" : multipartRequest.getParameter("OaMid");
		
		AboutMemberVO vo = new AboutMemberVO();
		AboutMemberDAO dao = new AboutMemberDAO();
		vo = dao.getMemberIdCheck(aMid);
		String tempaPwd = vo.getaPwd();

		String aPwd = (multipartRequest.getParameter("OaPwd")==null || multipartRequest.getParameter("OaPwd").equals(""))? ""
				: multipartRequest.getParameter("OaPwd");
		String aNickName = (multipartRequest.getParameter("OaNickName")==null || multipartRequest.getParameter("OaNickName").equals(""))? "" 
				: multipartRequest.getParameter("OaNickName");
		String aAnl = (multipartRequest.getParameter("OaAnl")==null || multipartRequest.getParameter("OaAnl").equals(""))? "" 
				: multipartRequest.getParameter("OaAnl");
		if(filesystemName==null || filesystemName.equals("")) {
			filesystemName = "logo2.png";
		}
		
		if(!tempaPwd.equals(aPwd)) {
			String salt = UUID.randomUUID().toString().substring(0,8);
			
			SecurityUtil security = new SecurityUtil();
			aPwd = security.encryptSHA256(salt+aPwd);
			aPwd = salt + aPwd;
		}
		
		vo.setaMid(aMid);
		vo.setaPwd(aPwd);
		vo.setaNickName(aNickName);
		vo.setaPhoto(filesystemName);
		vo.setaAnl(aAnl);
		
		int res = dao.MemberUpdateOk(vo);
		
		if(res != 0) {
			request.setAttribute("message", "회원정보가 수정되었습니다.");
			request.setAttribute("url", "Settings.me");
		}
		else{
			request.setAttribute("message", "회원정보 수정 실패하였습니다.");
			request.setAttribute("url", "MemberUpdate.me");
		}
	}
}
