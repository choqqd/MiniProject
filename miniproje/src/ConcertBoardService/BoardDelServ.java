package ConcertBoardService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/boardDelServ")
public class BoardDelServ extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BoardDelServ() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String bNum = request.getParameter("boardNum");
		int boardNum = Integer.parseInt(bNum);
		
		ConcertBoardDAO dao = new ConcertBoardDAO();
		ConcertBoardVO vo = dao.delContents(boardNum);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
