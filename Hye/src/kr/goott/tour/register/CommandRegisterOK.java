package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.goott.tour.controller.CommandService;

public class CommandRegisterOK implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws ServletException , IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		RegisterVO	vo = new RegisterVO();
			vo.setUserId(request.getParameter("userId"));
			vo.setUserPwd(request.getParameter("userPwd"));
			vo.setUserName(request.getParameter("userName"));
			vo.setT1(request.getParameter("t1"));
			vo.setT2(request.getParameter("t2"));
			vo.setT3(request.getParameter("t3"));
			vo.setZipCode(request.getParameter("zipCode"));
			vo.setAddr(request.getParameter("addr"));
			vo.setDetailAddr(request.getParameter("detailAddr"));
			vo.setEmailId(request.getParameter("emailId"));
			vo.setEmailDomain(request.getParameter("emailDomain"));
			vo.setMemType(request.getParameter("memType"));
			
			RegisterDAO dao = new RegisterDAO();
			
			int cnt = dao.insertRecord(vo);
				
			request.setAttribute("cnt", cnt);
			
			
		return 	"registerFormOk.jsp"; 
	}

}
