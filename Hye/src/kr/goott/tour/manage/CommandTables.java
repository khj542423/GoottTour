package kr.goott.tour.manage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandTables implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ManageVO vo = new ManageVO();
		ManageDAO dao = new ManageDAO();
		
		List<ManageVO> lst = dao.selectMem();
		//System.out.println("dao생성, 실행후..");
		request.setAttribute("lst", lst);
		
		return "/project/manage/tables.jsp";
	}

}
