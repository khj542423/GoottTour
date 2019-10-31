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
		
		//���������� 
		String pageNumStr = request.getParameter("pageNum");
		BoardVO vo = new BoardVO();
		if(pageNumStr!=null && !pageNumStr.equals("")) {
			vo.setPageNum(Integer.parseInt(pageNumStr));
		}
		BoardDAO dao = new BoardDAO();
		
		//����������
		vo.setCommuPage(request.getParameter("commuPage"));
		
		//�� ���ڵ� ��
		vo.setTotalRecord(dao.boardTotalRecord(vo.getCommuPage()));
		
		//�� ������ ��
		if(vo.getTotalRecord() % vo.getOnePageRecord()==0) {
			vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord());
		}else {
			vo.setTotalPage(vo.getTotalRecord()/vo.getOnePageRecord()+1);
		}
		
		//������ ��ȣ�� ���������� ���
		vo.setStartPage((vo.getPageNum()-1)/vo.getOnePageMax()*vo.getOnePageMax()+1);
		
		//�ش������� ���ڵ� ����
		List<BoardVO> lst = dao.getAllRecord(vo.getPageNum(), vo.getOnePageRecord(), vo.getCommuPage(), vo.getTotalRecord(), vo.getTotalPage());
		
		//���������� ������ ������
		request.setAttribute("vo", vo);
		request.setAttribute("lst", lst);
		
		String commuPage = vo.getCommuPage()+".jsp";
		
		return commuPage;
	}

}
