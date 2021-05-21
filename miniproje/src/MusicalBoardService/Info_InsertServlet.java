package MusicalBoardService;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectVO.ShowVO;


@WebServlet("/musicalInsertServlet")
public class Info_InsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Info_InsertServlet() {
        super();
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	req.setCharacterEncoding("UTF-8");
    	String show_Name = req.getParameter("show_Name");
    	String show_Startday = req.getParameter("show_Startday");
    	String show_Endday = req.getParameter("show_Endday");
    	String Concert_Hall_Code = req.getParameter("Concert_Hall_Code");
    	
    	System.out.println(show_Name);
    	
    	
    	ShowVO vo = new ShowVO();
    	vo.setShow_Name(show_Name);
    	vo.setShow_Startday(show_Startday);
    	vo.setShow_Endday(show_Endday);
    	vo.setConcert_Hall_Code(Concert_Hall_Code);
    	
    	InfoDAO dao = new InfoDAO();
    	dao.insertMusical(vo);
    	req.setAttribute("vo",vo);
    	
    	RequestDispatcher rd = req.getRequestDispatcher("MiniProj/musical/result/2_outPut.jsp");
		rd.forward(req, resp);
    	
    }
   


}
