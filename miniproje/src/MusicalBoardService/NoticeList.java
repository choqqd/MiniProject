package MusicalBoardService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/noticeList")
public class NoticeList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		
		NoticeDAO dao = new NoticeDAO();
		List<NoticeVO> list = dao.getNoticeList();

		JSONArray ary = new JSONArray();
		for(NoticeVO vo : list) {
			JSONObject noteList = new JSONObject();
			noteList.put("notice_Num", vo.getNotice_Num());
			noteList.put("notice_Title", vo.getNotice_Title());
			noteList.put("member_Id", vo.getMember_Id());
			noteList.put("notice_Date", vo.getNotice_Date());
			noteList.put("notice_Hit", vo.getNotice_Hit());
			ary.add(noteList);
		}
		resp.getWriter().print(ary);
	}
	//protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}
}





















