package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandRegisterEdit implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RegisterVO vo = new RegisterVO();
		vo.setUserId((String)request.getSession().getAttribute("userId"));
		
		RegisterDAO dao = new RegisterDAO();
		dao.getRegister(vo);
		
		request.setAttribute("vo", vo);
		
		return "registerEditForm.jsp";
	}

}
