package com.shopping.myservlet;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.model.Person05;

@WebServlet(urlPatterns = {"/hihihi"},
	initParams = {
			@WebInitParam(name = "company" , value = "webtest"),
			@WebInitParam(name = "address" , value = "test")
	})

public class yusinServlet extends HttpServlet {

	private String company = null ;
	private String address = null ;
	
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		
		System.out.println("서블릿이 초기화 됩니다.");
		
		this.company = config.getInitParameter("company") ;
		this.address = config.getInitParameter("address") ;
		
		ServletContext application = config.getServletContext();
		
		application.setAttribute("hello", "안녕하세요.");
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {

		System.out.println("get 메소드 호출됨");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) 
					throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		int age = Integer.parseInt(request.getParameter("age")) ;
		String email = request.getParameter("email"); 
		String ageg = request.getParameter("ageg");
		
		Person05 bean = new Person05() ;
		bean.setId(id);
		bean.setPassword(password);
		bean.setName(name);
		bean.setGender(gender);
		bean.setAge(age);
		bean.setEmail(email);
		bean.setAgeg(ageg);
		
		request.setAttribute("cc", bean);
		
		HttpSession session = request.getSession() ;
		
		session.setAttribute("company", this.company);
		session.setAttribute("address", this.address);
		
		String gotopage = "/example/servletResult04.jsp" ;
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage);
		dispatcher.forward(request, response);
		
	}
	
}
