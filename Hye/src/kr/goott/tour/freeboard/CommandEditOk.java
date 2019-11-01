package kr.goott.tour.freeboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandEditOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		BoardVO vo = new BoardVO();
			
		vo.setNum(Integer.parseInt(request.getParameter("num")));
		vo.setSubject(request.getParameter("subject"));
		vo.setContent(request.getParameter("content"));
		vo.setPageNum(Integer.parseInt(request.getParameter("pageNum")));
		vo.setCommuPage(request.getParameter("commuPage"));
		
		BoardDAO dao = new BoardDAO();
		
		int cnt = dao.boardUpdate(vo);
		
		dao.boardSelect(vo, false);
		request.setAttribute("vo", vo);
		
		String viewPage=null;
		if(cnt>0) {
			viewPage = "list.do?commuPage"+vo.getCommuPage();
		}else if(cnt<=0){
			viewPage = "edit.jsp";
		}
		return viewPage;
	}

}
