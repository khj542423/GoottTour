package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.goott.tour.controller.CommandService;

public class CommandLogout implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession sess = request.getSession();
		sess.invalidate();
		
		return "/index.do";
	}

}
