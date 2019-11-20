package kr.goott.tour.sangfum;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandSel implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		SangfumVO vo = new SangfumVO();
		SangfumDAO dao = new SangfumDAO();
		
		List<SangfumVO> lst = dao.findDay();
		request.setAttribute("lst", lst);
		
		return "/project/sangfum1.jsp";
	}

}
