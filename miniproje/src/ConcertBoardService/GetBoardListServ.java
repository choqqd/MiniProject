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

@WebServlet("/getBoardList")
public class GetBoardListServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetBoardListServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		ConcertBoardDAO dao = new ConcertBoardDAO();
		List<ConcertBoardVO> list = dao.getBoarderList();
		
		JSONArray ary = new JSONArray();
		for(ConcertBoardVO vo : list) {
			JSONObject obj = new JSONObject();
			obj.put("boardNum", vo.getBoardnum());
			//obj.put("memberId", vo.getMemberId());
			obj.put("memberName", vo.getMemberName());
			obj.put("title", vo.getTitle());
			obj.put("contents", vo.getContents());
			obj.put("uploadDate", vo.getUploadDate());
			obj.put("hit", vo.getHit());
			ary.add(obj);
		}
		response.getWriter().print(ary);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
