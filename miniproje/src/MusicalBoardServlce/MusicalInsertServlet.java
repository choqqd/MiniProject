package MusicalBoardServlce;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import projectVO.ShowVO;


@WebServlet("/musicalInsertServlet")
public class MusicalInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MusicalInsertServlet() {
        super();
    }
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
    	// TODO Auto-generated method stub
    	
    	String show_Code = req.getParameter("show_Code");
    	String show_Name = req.getParameter("show_Name");
    	String show_Startday = req.getParameter("show_Startday");
    	String show_Endday = req.getParameter("show_Endday");
    	String Concert_Hall_Cod = req.getParameter("Concert_Hall_Cod");
    	
    	ShowVO vo = new ShowVO();
    	vo.setShow_Code(show_Code);
    	vo.setShow_Name(show_Name);
    	vo.setShow_Startday(show_Startday);
    	vo.setShow_Endday(show_Endday);
    	vo.setConcert_Hall_Code(Concert_Hall_Cod);
    	
    	MusicalDAO dao = new MusicalDAO();
    	dao.insertMusical(vo);
    }

}
