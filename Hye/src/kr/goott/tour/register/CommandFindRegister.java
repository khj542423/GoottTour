package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandFindRegister implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idsName = request.getParameter("idsName");
		String pwsId = request.getParameter("pwsId");
		
		RegisterVO vo = new RegisterVO();
		
		RegisterDAO dao = new RegisterDAO();
		
		if(idsName!=null && !idsName.equals("")) {
			vo.setUserName(idsName);
			vo.setT1(request.getParameter("idsT1"));
			vo.setT2(request.getParameter("idsT2"));
			vo.setT3(request.getParameter("idsT3"));
			
			dao.findId(vo);
			
			request.setAttribute("userId", vo.getUserId());
		}
		if(pwsId!=null && !pwsId.equals("")) {
			vo.setUserId(pwsId);
			vo.setUserName(request.getParameter("pwsName"));
			vo.setT1(request.getParameter("pwsT1"));
			vo.setT2(request.getParameter("pwsT2"));
			vo.setT3(request.getParameter("pwsT3"));
			
			dao.findPwd(vo);
			request.setAttribute("userPwd", vo.getUserPwd());
		}
		
		
		return "findOk.jsp";
	}

}
