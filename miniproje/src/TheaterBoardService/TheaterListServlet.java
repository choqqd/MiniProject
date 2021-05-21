package TheaterBoardService;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import TheaterListService.TheaterListVO;

public class TheaterListServlet {

	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 전체 리스트 - > memberListOutput.jsp
		// Service - > DAO
		TheaterService service = TheaterService.getInstance();
		List<TheaterListVO> list = service.theaterAllList();

		request.setAttribute("list", list);
		RequestDispatcher rd = request.getRequestDispatcher("theater/theaterList.jsp");
		rd.forward(request, response);

	}
}
