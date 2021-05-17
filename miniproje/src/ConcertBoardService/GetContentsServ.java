package ConcertBoardService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/getContentsServ")
public class GetContentsServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public GetContentsServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset-UTF-8");
		
		String bNum = request.getParameter("boardNum");
		int boardNum = Integer.parseInt(bNum);
		
		ConcertBoardDAO dao = new ConcertBoardDAO();
		ConcertBoardVO vo = dao.selecetContents(boardNum);
		
		JSONObject obj = new JSONObject();
		obj.put("memberName", vo.getMemberName());
		obj.put("title", vo.getTitle());
		obj.put("contents", vo.getContents());
		obj.put("uploadDate", vo.getUploadDate());
		obj.put("hit", vo.getHit());
		
		response.getWriter().print(obj);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
