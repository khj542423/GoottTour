package kr.goott.tour.freeboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandDelOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		BoardVO vo = new BoardVO();
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		vo.setCommuPage(request.getParameter("commuPage"));
		//레코드 삭제
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardDelete(vo.getNum());
		
		request.setAttribute("vo", vo);
		request.setAttribute("cnt", cnt);
		
		return "delOk.jsp";
	}

}
