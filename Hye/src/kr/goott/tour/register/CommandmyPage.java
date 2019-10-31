package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandmyPage implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RegisterVO vo = new RegisterVO();
		vo.setUserId((String)request.getSession().getAttribute("userId"));
		vo.setUserName((String)request.getSession().getAttribute("userName"));
		vo.setMemType((String)request.getSession().getAttribute("memType"));
		
		
		RegisterDAO dao = new RegisterDAO();
		dao.getRegister(vo);
		
		request.setAttribute("vo", vo);
		
		return "myPage.jsp";
		
		
		
	}

}
