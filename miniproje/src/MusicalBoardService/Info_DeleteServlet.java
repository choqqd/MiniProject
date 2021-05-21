package MusicalBoardService;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteServlet")
public class Info_DeleteServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String show_code =request.getParameter("show_code");
		
		InfoDAO dao = new InfoDAO();
		dao.deleteMusical(show_code);
		
		request.setAttribute("show_code",show_code);
		
    	RequestDispatcher rd = request.getRequestDispatcher("MiniProj/musical/result/2_deleteOutput.jsp");
		rd.forward(request, response);
	}
	
}
