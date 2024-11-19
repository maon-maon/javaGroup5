package about.test;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import about.AboutInterface;
import about.AboutMemberDAO;
import about.memberData.AboutMemberVO;

public class MemberUpdateOkCommand1 implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//이미지 파일 업로드 처리
		String realPath = request.getServletContext().getRealPath("/images/imgData/");
		int maxSize = 1024*1024*2;
		String encoding = "UTF-8";
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
	
		//이미지 파일 저장확인
		int fileRes = 0;
		//String originalFileName = multipartRequest.getOriginalFileName("aPhoto");
		String filesystemName = multipartRequest.getFilesystemName("aPhoto");
		if(filesystemName != null && !filesystemName.equals("")) fileRes = 1;
		else  fileRes = 0;
		
		String aMid = multipartRequest.getParameter("aMid")==null? "" : multipartRequest.getParameter("aMid");
		String aPwd = multipartRequest.getParameter("aPwd")==null? "" : multipartRequest.getParameter("aPwd");
		String aNickName = multipartRequest.getParameter("aNickName")==null? "" : multipartRequest.getParameter("aNickName");
		//String aPhoto = multipartRequest.getParameter("aPhoto")==null? "" : multipartRequest.getParameter("aPhoto");
		String aAnl = multipartRequest.getParameter("aAnl")==null? "" : multipartRequest.getParameter("aAnl");
		if(filesystemName.equals("")) {
			filesystemName = "logo.png";
		}
		System.out.println("aMid:   "+aMid);

		AboutMemberVO vo = new AboutMemberVO();
		vo.setaMid(aMid);
		vo.setaPwd(aPwd);
		vo.setaNickName(aNickName);
		vo.setaPhoto(filesystemName);
		vo.setaAnl(aAnl);
		System.out.println("vovo:   "+vo);
		AboutMemberDAO dao = new AboutMemberDAO();
		int res = dao.MemberUpdateOk(vo);
		System.out.println("MemberUpdateOk res:  "+res);
		
		
		if(res != 0 && fileRes != 0) {
			request.setAttribute("message", "회원정보가 수정되었습니다.");
			request.setAttribute("url", "Settings.me");
		}
		else{
			request.setAttribute("message", "회원정보 수정 실패하였습니다.");
			request.setAttribute("url", "MemberUpdate.me");
		}
		
	}

}
