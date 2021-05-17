package TheaterBoardService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/theaterBoardServlet")
public class TheaterBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public TheaterBoardServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		TheaterBoardDAO dao = new TheaterBoardDAO();
		List<TheaterVO> list = dao.MiniboardList();
		JSONArray ary = new JSONArray();
		for(TheaterVO vo : list) {
			JSONObject obj = new JSONObject();
			obj.put("board_num", vo.getBoard_num());
			obj.put("user_name", vo.getUser_name());
			obj.put("board_title", vo.getBoard_title());
			obj.put("board_date", vo.getBoard_date());
			obj.put("board_hit", vo.getBoard_hit());
			ary.add(obj);
		}
		response.getWriter().print(ary);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
