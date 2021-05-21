package MusicalBoardService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

public class NoticeContents extends HttpServlet{
	private static final long serialVersionUID = 1L;

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset-UTF-8");
		
		String title = req.getParameter("title");
		
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = dao.selectNotice(title);

		JSONObject obj = new JSONObject();
		obj.put("memberName", vo.getMember_Id());
		obj.put("title", vo.getNotice_Title());
		obj.put("contents", vo.getNotice_Contents());
		
		resp.getWriter().print(obj);
		
		
	}
	
	
}






