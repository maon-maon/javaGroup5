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
		//이미지 파일 업로드 처리
		String realPath = request.getServletContext().getRealPath("/images/imgData/");
		int maxSize = 1024*1024*2;
		String encoding = "UTF-8";
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
	
		//이미지 파일 저장확인
		int fileRes = 0;
		//String originalFileName = multipartRequest.getOriginalFileName("aPhoto");
		String filesystemName = multipartRequest.getFilesystemName("aPhoto");
//		if(filesystemName != null && !filesystemName.equals("")) fileRes = 1;
//		else  fileRes = 0;

		String aMid = (multipartRequest.getParameter("aMid")==null)? "" : multipartRequest.getParameter("aMid");
		
		AboutMemberVO vo = new AboutMemberVO();
		AboutMemberDAO dao = new AboutMemberDAO();
		vo = dao.getMemberIdCheck(aMid);
		String tempaPwd = vo.getaPwd();
		String tempaNickName = vo.getaNickName();
		String tempaPhoto = vo.getaPhoto();
		String tempaAnl = vo.getaAnl();
		
		String aPwd = (multipartRequest.getParameter("aPwd1")==null || multipartRequest.getParameter("aPwd1").equals(""))? tempaPwd : multipartRequest.getParameter("aPwd1");
		String aNickName = (multipartRequest.getParameter("aNickName")==null || multipartRequest.getParameter("aNickName").equals(""))? tempaNickName : multipartRequest.getParameter("aNickName");
		//String aPhoto = multipartRequest.getParameter("aPhoto")==null? "" : multipartRequest.getParameter("aPhoto");
		String aAnl = (multipartRequest.getParameter("aAnl")==null || multipartRequest.getParameter("aAnl").equals(""))? tempaAnl : multipartRequest.getParameter("aAnl");
		if(filesystemName==null || filesystemName.equals("")) {
			filesystemName = tempaPhoto;
		}
		
		//비밀번호 암호화
		String salt = UUID.randomUUID().toString().substring(0,8);
		
		SecurityUtil security = new SecurityUtil();
		aPwd = security.encryptSHA256(salt+aPwd);
		aPwd = salt + aPwd;
		
		vo.setaMid(aMid);
		vo.setaPwd(aPwd);
		vo.setaNickName(aNickName);
		vo.setaPhoto(filesystemName);
		vo.setaAnl(aAnl);
		//System.out.println("vovo:   "+vo);
		int res = dao.MemberUpdateOk(vo);
		//System.out.println("MemberUpdateOk res:  "+res);
		
		//if(res != 0 && fileRes != 0) {
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
