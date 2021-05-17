package ConcertRankService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

@WebServlet("/getRankListServlet")
public class GetRankListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public GetRankListServlet() {
    	super();
    }
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-UTF-8");

		JSONArray ary= new JSONArray();
		
		RankDAO dao = new RankDAO();
		List<RankVO> list = dao.getRankList();
		for(RankVO vo : list) {
			JSONObject obj = new JSONObject();
			obj.put("ShowCode", vo.getShowCode());
			obj.put("ShowName", vo.getShowName());
			obj.put("Hit", vo.getHit());
		
			ary.add(obj);
		}
		response.getWriter().print(ary);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
	}

}
