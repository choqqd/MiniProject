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

import projectVO.ShowVO;

@WebServlet("/theaterListServlet")
public class TheaterListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TheaterListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		TheaterDAO dao = new TheaterDAO();
		List<ShowVO> list = dao.getTheaterList();
		
		JSONArray ary = new JSONArray();
		for(ShowVO vo : list) {
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
