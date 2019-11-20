package kr.goott.tour.manage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class MemTypeChange implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ManageDAO dao = new ManageDAO();
		// ´ñ±Û ¼öÁ¤
		ManageVO vo = new ManageVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setMemType(request.getParameter("memType"));
		int cnt = dao.memUpdate(vo);
		
		// ´ñ±Û ¼±ÅÃ
		List<ManageVO> lst = dao.selectMem();
		
		request.setAttribute("lst", lst);
		
		return "/project/manage/memView.jsp";
	}

}
