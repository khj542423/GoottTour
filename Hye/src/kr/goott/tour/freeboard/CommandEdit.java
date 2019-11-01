package kr.goott.tour.freeboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandEdit implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		BoardVO vo = new BoardVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		vo.setCommuPage(request.getParameter("commuPage"));
		
		BoardDAO dao = new BoardDAO();
		dao.boardSelect(vo,false);
		
		request.setAttribute("vo", vo);
		
		return "edit.jsp";
	}

}
