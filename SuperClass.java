package com.shopping.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shopping.model.Member;



// 하위 컨트롤러들이 공통적으로 사용하는 기능을 여기에 작성
public abstract class SuperClass implements SuperController {
	
	private HttpServletRequest request = null ;
	private HttpServletResponse response = null ;
	
	protected HttpSession session = null ;
	protected Member loginfo = null ; //로그인 여부를 파악하는 변수
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.request  = request ;
		this.response = response ;
		this.session = request.getSession() ;
		this.loginfo = (Member)this.session.getAttribute("loginfo") ;
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.request  = request ;
		this.response = response ;
		this.session = request.getSession() ;
		this.loginfo = (Member)this.session.getAttribute("loginfo") ;
	}

	public void GotoPage(String gotopage) {
		// 요청한 페이지로 이동시킵니다.
		RequestDispatcher dispatcher = null ; 
		
			try {
				dispatcher = request.getRequestDispatcher(gotopage) ;
				dispatcher.forward(request, response);
				
				} catch (Exception e) {
					
					e.printStackTrace();
					
				}
		
	}

	public void setAlertMessage(String message) {
		// session 영역에 "alertMsg" 라는 이름으르 사용자에게 경고/오류/주의 문구를 띄워 줍니다.
		// in common.jsp 파일 하단 참조
		this.session.setAttribute("alertMsg", message);
		
		
	}

}
