package MusicalBoardService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/noticeUpload")
public class NoticeUpload extends HttpServlet{

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String name = req.getParameter("name");
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		String pwd = req.getParameter("pwd");
		
		
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = new NoticeVO();
		
		vo.setMember_Id(name);
		vo.setNotice_Title(title);
		vo.setNotice_Contents(contents);
		vo.setNotice_Pwd(pwd);
		
		NoticeVO nvo = dao.insertNotice(vo);
		
		JSONObject obj = new JSONObject();
		obj.put("memberId", nvo.getMember_Id());
		obj.put("title", nvo.getNotice_Title());
		obj.put("contents", nvo.getNotice_Contents());
		obj.put("pwd", nvo.getNotice_Pwd());
	
		resp.getWriter().print(obj);
	}
	
}
 