package ConcertBoardService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

@WebServlet("/boardModifyServ")
public class BoardModifyServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BoardModifyServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String contents = request.getParameter("contents");
		String boardNum = request.getParameter("boardNum");
		int bNum = Integer.parseInt(boardNum);
		
		ConcertBoardDAO dao = new ConcertBoardDAO();
		ConcertBoardVO vo = new ConcertBoardVO();
		
		vo.setTitle(title);
		vo.setContents(contents);
		vo.setBoardnum(bNum);
		
		JSONObject obj = new JSONObject();
		if(dao.modifyContents(vo)) {
			obj.put("returnCode", "Success");
		} else {
			obj.put("returnCode", "Fail");
		}
		response.getWriter().print(obj);
	}

}
