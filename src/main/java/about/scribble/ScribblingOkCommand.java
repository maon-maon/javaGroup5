package about.scribble;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import about.AboutInterface;

public class ScribblingOkCommand implements AboutInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//이미지 파일 업로드 처리
		String realPath = request.getServletContext().getRealPath("/images/imgData/");
		int maxSize = 1024*1024*2;
		String encoding = "UTF-8";
		MultipartRequest multipartRequest = new MultipartRequest(request, realPath, maxSize, encoding, new DefaultFileRenamePolicy());
		
		Enumeration fileNames = multipartRequest.getFileNames();
		//System.out.println("fileNames: "+fileNames);
		String originalFileName = "";
		String filesystemName = "";
		
		String file = "";
		while(fileNames.hasMoreElements()) {
			file = (String) fileNames.nextElement();
			
			if(multipartRequest.getFilesystemName(file) != null) { 
				originalFileName += multipartRequest.getOriginalFileName(file) + "/";
				filesystemName += multipartRequest.getFilesystemName(file) + "/";
			}
		}
		if(!originalFileName.isEmpty()) {
			//System.out.println("originalFileName: "+originalFileName);
			originalFileName = originalFileName.substring(0, originalFileName.lastIndexOf("/"));
		}
		if(!filesystemName.isEmpty()) {
			//System.out.println("filesystemName: "+filesystemName);
			filesystemName = filesystemName.substring(0, filesystemName.lastIndexOf("/"));
		}
		
		String inMid = (multipartRequest.getParameter("inMid")==null)? "1" : multipartRequest.getParameter("inMid");
		//System.out.println("inMid: "+inMid);

		String inCtg = multipartRequest.getParameter("ctg")==null ? "" : multipartRequest.getParameter("ctg");
		String inTitle = multipartRequest.getParameter("title")==null ? "" : multipartRequest.getParameter("title");
		int inScore = (multipartRequest.getParameter("inScore")==null || multipartRequest.getParameter("inScore").equals("")) ? 0 : Integer.parseInt(multipartRequest.getParameter("inScore"));
		
		if(filesystemName==null || filesystemName.equals("")) {
			filesystemName = "logo2.png";
		}
		
		ScribbleVO vo = new ScribbleVO();
		ScribbleDAO dao = new ScribbleDAO();
		
		vo.setInMid(inMid);
		vo.setInCtg(inCtg);
		vo.setInTitle(inTitle);
		vo.setInScore(inScore);
		vo.setInPhoto(filesystemName);
		//System.out.println("vo : " + vo);
		int res = dao.setScribble(vo);
		//System.out.println("res: " + res);
		
		if(res != 0) {
			request.setAttribute("message", "쪽지가 수첩에 들어갔습니다.");
			request.setAttribute("url", "Scribbling.me");
		}
		else {
			request.setAttribute("message", "쪽지가 바람에 날라갔어요. 다시 작성해주세요");
			request.setAttribute("url", "Scribbling.me");
		}
			
		

	}

}
