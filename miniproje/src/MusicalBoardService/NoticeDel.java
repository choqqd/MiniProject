package MusicalBoardService;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/NoticeDel")
public class NoticeDel extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nNum = req.getParameter("NoticNum");
		int noticeNum = Integer.parseInt(nNum);
		
		NoticeDAO dao = new NoticeDAO();
		NoticeVO vo = dao.delNotice(noticeNum);
		
	}
	
}
