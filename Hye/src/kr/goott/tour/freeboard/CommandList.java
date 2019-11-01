package kr.goott.tour.freeboard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandList implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)	throws ServletException, IOException {
		
		//현재페이지 
		String pageNumStr = request.getParameter("pageNum");
		BoardVO vo = new BoardVO();
		if(pageNumStr!=null && !pageNumStr.equals("")) {
			vo.setPageNum(Integer.parseInt(pageNumStr));
		}
		BoardDAO dao = new BoardDAO();
		
		//페이지구분
		vo.setCommuPage(request.getParameter("commuPage"));
		
		//서치키랑 서치워드
		String searchKey = request.getParameter("searchKey");
		String searchWord = request.getParameter("searchWord");
		
		//총 레코드 수
		vo.setTotalRecord(dao.boardTotalRecord(vo.getCommuPage(), searchKey, searchWord));
		
		//총 페이지 수
		if(vo.getTotalRecord() % vo.getOnePageRecord()==0) {
			vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord());
		}else {
			vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1);
		}
		
		//페이지 번호의 시작페이지 계산
		vo.setStartPage((vo.getPageNum()-1)/vo.getOnePageMax()*vo.getOnePageMax()+1);
		
		//해당페이지 레코드 선택
		List<BoardVO> lst = dao.getAllRecord(vo.getPageNum(), vo.getOnePageRecord(), vo.getCommuPage(), vo.getTotalRecord(), vo.getTotalPage(), searchKey, searchWord);
		
		//뷰페이지로 가져갈 데이터
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);
		
		String commuPage = vo.getCommuPage()+".jsp";
		if(vo.getCommuPage()=="travelQ"||vo.getCommuPage().equals("travelQ")) {commuPage = "InfoCenter.jsp";}
		
		return commuPage;
	}

}
