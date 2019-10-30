package kr.goott.tour.register;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.goott.tour.controller.CommandService;

public class CommandRegisterEditOk implements CommandService {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		RegisterVO vo = new RegisterVO();
		
		vo.setUserPwd(request.getParameter("userPwd"));
		vo.setT1(request.getParameter("t1"));
		vo.setT2(request.getParameter("t2"));
		vo.setT3(request.getParameter("t3"));
		vo.setZipCode(request.getParameter("zipCode"));
		vo.setAddr(request.getParameter("addr"));
		vo.setDetailAddr(request.getParameter("detailAddr"));
		vo.setEmail(request.getParameter("emailId"));
		vo.setEmailDomain(request.getParameter("emailDomain"));
		
		HttpSession sess = request.getSession();
		vo.setUserId((String)sess.getAttribute("userId"));
		
		RegisterDAO dao = new RegisterDAO();
		int cnt = dao.updateRecord(vo);
		
		request.setAttribute("cnt", cnt);
		
		return "registerEditOk.jsp";
	}

}
