package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandIdCheck implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		
		RegisterDAO dao = new RegisterDAO();
		boolean result = dao.idCheck(userId);
		
		//뷰에 데이터 보내기 
		request.setAttribute("result", result);
		request.setAttribute("userId", userId);
		
		return "idCheck.jsp";
		
		
	}
   
}
