package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.goott.tour.controller.CommandService;

public class CommandLoginOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RegisterVO vo = new RegisterVO();
		vo.setUserId(request.getParameter("userId"));
		vo.setUserPwd(request.getParameter("userPwd"));
		
		RegisterDAO dao = new RegisterDAO();
		
		dao.login(vo);
		
		
		String viewFile = "/index.do";
		
		if(vo.getUserName()==null || vo.getUserName()=="") {
			
			viewFile = "loginForm.jsp";
			
		}else {
			HttpSession sess = request.getSession();
			sess.setAttribute("userId", vo.getUserId());
			sess.setAttribute("userName", vo.getUserName());
			
		}
		
		return viewFile;
	
	}
	

}
