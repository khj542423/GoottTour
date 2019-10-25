package kr.goott.tour.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/*.do")
public class ControllerAction extends HttpServlet {
	Map<String, CommandService> map = new HashMap<String, CommandService>();
    public ControllerAction() {
        super();
       
    }

	public void init(ServletConfig config) throws ServletException {
		//properties파일명을 web.xml에서 가져오기
		//D:\workspaceWeb\WebMVC\WebContent\WEB-INF\properties\\urlMapping.properties
		
		String propertiesFile = config.getInitParameter("proConfig");
		
		Properties propObject = new Properties();
		
		try {
			FileInputStream fis = new FileInputStream(propertiesFile);
			propObject.load(fis); //파일의 문자열데이터를 Properties 객체로 생성함.
			fis.close();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Properties 생성 에러...");
		}
		//////properties의 객체를 Map으로 저장하기/////////////
		//키목록 얻어오기 
		Set key = propObject.keySet();
		Iterator<String> iterKey = key.iterator();
		try {
			while(iterKey.hasNext()){
				String k = iterKey.next(); // 키 구하기
				String className = propObject.getProperty(k);//키값 구하기
				
				//문자열을 클래스 객체로 생성 하는 클래스  (클래스형)
				Class commandClass = Class.forName(className);
				//interface 객체인 commandService객체 얻어오기 			   제일먼저 생성되는것 가져오게하는..[0]
				CommandService command = (CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(k, command);
			}
		}catch(Exception e ) {
			e.printStackTrace();
			System.out.println("맵생성 에러...키값 키");	
		}
			
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//접속주소 알아내기..
		// *.do, index.do, board/list.do,.............
		String uri = request.getRequestURI();//프로토콜 제외한 주소를 불러옴 uri값 (/WebMVC/index.do) -> (/index.do)
		String contextPath = request.getContextPath();   /// (/WebMVC/) 가구해짐
		
		String key  = uri.substring(contextPath.length());
		
		CommandService service = map.get(key);
		String viewFile = service.execute(request, response);
		
		//컨트롤러에서 뷰페이지로 이동 하는 클래스
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewFile);
		dispatcher.forward(request, response);
		

	}

}
