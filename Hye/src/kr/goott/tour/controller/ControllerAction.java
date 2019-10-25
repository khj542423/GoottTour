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
		//properties���ϸ��� web.xml���� ��������
		//D:\workspaceWeb\WebMVC\WebContent\WEB-INF\properties\\urlMapping.properties
		
		String propertiesFile = config.getInitParameter("proConfig");
		
		Properties propObject = new Properties();
		
		try {
			FileInputStream fis = new FileInputStream(propertiesFile);
			propObject.load(fis); //������ ���ڿ������͸� Properties ��ü�� ������.
			fis.close();
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("Properties ���� ����...");
		}
		//////properties�� ��ü�� Map���� �����ϱ�/////////////
		//Ű��� ������ 
		Set key = propObject.keySet();
		Iterator<String> iterKey = key.iterator();
		try {
			while(iterKey.hasNext()){
				String k = iterKey.next(); // Ű ���ϱ�
				String className = propObject.getProperty(k);//Ű�� ���ϱ�
				
				//���ڿ��� Ŭ���� ��ü�� ���� �ϴ� Ŭ����  (Ŭ������)
				Class commandClass = Class.forName(className);
				//interface ��ü�� commandService��ü ������ 			   ���ϸ��� �����Ǵ°� ���������ϴ�..[0]
				CommandService command = (CommandService)commandClass.getDeclaredConstructors()[0].newInstance();
				map.put(k, command);
			}
		}catch(Exception e ) {
			e.printStackTrace();
			System.out.println("�ʻ��� ����...Ű�� Ű");	
		}
			
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
			
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//�����ּ� �˾Ƴ���..
		// *.do, index.do, board/list.do,.............
		String uri = request.getRequestURI();//�������� ������ �ּҸ� �ҷ��� uri�� (/WebMVC/index.do) -> (/index.do)
		String contextPath = request.getContextPath();   /// (/WebMVC/) ��������
		
		String key  = uri.substring(contextPath.length());
		
		CommandService service = map.get(key);
		String viewFile = service.execute(request, response);
		
		//��Ʈ�ѷ����� ���������� �̵� �ϴ� Ŭ����
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewFile);
		dispatcher.forward(request, response);
		

	}

}
