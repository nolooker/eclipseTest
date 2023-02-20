package com.shopping.myservlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.model.Person03;

@WebServlet(urlPatterns = {"/world"})

public class WorldController extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		System.out.println("서블릿이 초기화 됩니다.");
	}

	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String method = request.getMethod();
		System.out.println("요청 메소드 : " + method);
			if(method.equalsIgnoreCase("post")) {
				doPost(request, response);
			}else {
				doGet(request, response);
			}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println(this.getClass() + "doGet()");
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(this.getClass() + "doPost()");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		
		String[] jobs = request.getParameterValues("job");
		
		String job = "" ;
			
			if(jobs == null) {
				job = "";
			}else {
				for(int i = 0 ; i < jobs.length ; i++) {
					job += jobs[i] + "," ;
				}
				job = job.substring(0, job.length() - 1) ;
			}
		
			
		Person03 bean = new Person03(name,gender,job) ;
		
		request.setAttribute("abc", bean) ;
		
		String gotopage2 = "example/to03.jsp" ;
		RequestDispatcher dispatcher = request.getRequestDispatcher(gotopage2) ;
		dispatcher.forward(request, response);
		
   }
	
}
