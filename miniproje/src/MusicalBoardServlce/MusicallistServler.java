package MusicalBoardServlce;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import projectVO.ShowVO;


@WebServlet("/MusicallistServler")
public class MusicallistServler extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public MusicallistServler() {
        super();
    }

    
    // 전체 show 정보 조회
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
    res.setCharacterEncoding("UTF-8");
    res.setContentType("text/html;charset-UTF-8");
    
    JSONArray ary= new JSONArray();
    
    MusicalDAO dao = new MusicalDAO();
    List<ShowVO> list = dao.getMusicalList();
    
	for(ShowVO vo : list) {
		JSONObject obj = new JSONObject();
		obj.put("show_name", vo.getShow_Name());
		obj.put("show_startday", vo.getShow_Startday());
		obj.put("show_endday", vo.getShow_Endday());

		ary.add(obj);
	}
	res.getWriter().print(ary);
    }


}
