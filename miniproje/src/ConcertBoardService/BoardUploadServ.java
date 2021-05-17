package ConcertBoardService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/boarduploadserv")
public class BoardUploadServ extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String name = req.getParameter("name");
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		
		ConcertBoardDAO dao = new ConcertBoardDAO();
		ConcertBoardVO vo = new ConcertBoardVO();
		System.out.println(name+title+contents);
		vo.setMemberName(name);
		vo.setTitle(title);
		vo.setContents(contents);
		
		ConcertBoardVO cvo = dao.insertContents(vo);
		
		JSONObject obj = new JSONObject();
		obj.put("memberName", cvo.getMemberName());
		obj.put("title", cvo.getTitle());
		obj.put("contents", cvo.getContents());
		
		resp.getWriter().print(obj);
		
	}
}
