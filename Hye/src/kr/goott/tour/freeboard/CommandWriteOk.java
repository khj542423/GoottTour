package kr.goott.tour.freeboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandWriteOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		BoardVO vo = new BoardVO();
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setUserId((String)request.getSession().getAttribute("userId"));
		vo.setCommuPage(request.getParameter("commuPage"));
		
		BoardDAO dao = new BoardDAO();
		int cnt = dao.boardInsert(vo);
		
		request.setAttribute("cnt", cnt);
		request.setAttribute("vo", vo);
		
		return "writeOk.jsp";
	}

}
