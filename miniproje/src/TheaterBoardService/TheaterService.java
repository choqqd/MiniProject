package TheaterBoardService;

import java.util.List;

import TheaterListService.TheaterListDAO;
import TheaterListService.TheaterListVO;

public class TheaterService {

	private static TheaterService service = new TheaterService();
	private TheaterService() {
		
	}
	
	public static TheaterService getInstance() {
		return service;
		
	}
	
	public List<TheaterListVO> theaterAllList() {
		TheaterListDAO dao = TheaterListDAO.getInstance();
		return dao.theaterAllList();
		
	}
	
}
