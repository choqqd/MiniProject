package ConcertRankService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/getRankServlet")
public class GetRankServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public GetRankServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-UTF-8");

		String code = request.getParameter("code");
	

		RankDAO dao = new RankDAO();
		RankVO vo = dao.getRank(code);

		JSONObject obj = new JSONObject();
		obj.put("hit", vo.getHit());
		obj.put("Name", vo.getShowName());
		obj.put("Code", vo.getShowCode());
		
		
		response.getWriter().print(obj);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
