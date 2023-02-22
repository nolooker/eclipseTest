package com.shopping.controller;

import java.io.IOException;

import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.utility.MyUtility;

@WebServlet(urlPatterns = {"/ShopMall"}, initParams = {
	@WebInitParam(name = "txtSetting", value = "/WEB-INF/settings.txt"),
	@WebInitParam(name = "todolist", value = "/WEB-INF/todolist.txt")
})
public class FrontController extends HttpServlet{
	private String txtSetting = null ;
	private String todolist = null ;
	
	private ServletContext application = null ;
	
	// map for settings.txt file
	private Map<String, String> settingMap = null ;
	
	// map for todolist.txt file
	private Map<String, SuperController> todolistMap = null ;
	
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println(this.getClass() + " init() 메소드 호출됨");
		
		this.txtSetting = config.getInitParameter("txtSetting");
		System.out.println("setting file name : " + this.txtSetting);
		
		this.todolist = config.getInitParameter("todolist");
		System.out.println("controller file name : " + this.todolist);
		
		this.application = config.getServletContext() ;
		
		String txtSettingFile = this.application.getRealPath(txtSetting) ;
		System.out.println("setting fullpath name: " + txtSettingFile);
		
		System.out.println();
		
		String todolistFile = this.application.getRealPath(todolist) ;
		System.out.println("controller fullpath name : " + todolistFile);
		
		this.settingMap = MyUtility.getSettingMap(txtSettingFile);
		
		System.out.println("setting file element size : " + this.settingMap.size());
		
		this.application.setAttribute("map", this.settingMap);
		
		this.todolistMap = MyUtility.getTodolistMap(todolistFile);
		
		System.out.println("controller file element size : " + this.todolistMap.size());
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		try {
			this.doProcess(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			this.doProcess(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8"); // 한글 깨짐 방지
		
		String command = request.getParameter("command") ;
		System.out.println("command is [" + command + "]");
		
		SuperController controller = this.todolistMap.get(command) ;
		
		if(controller != null) {
			String method = request.getMethod().toLowerCase() ;
			
			if(method.equals("get")) {
				System.out.println(controller.toString() +  " get method called");
				controller.doGet(request, response);
			}else {
				System.out.println(controller.toString() +  " post method called");
				controller.doPost(request, response);
			}
		}else{
			System.out.println("request command is not found");
		}
	
	}
}