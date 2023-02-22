package com.shopping.controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.controller.SuperClass;
import com.shopping.dao.MemberDao;
import com.shopping.model.Member;
// 회원 가입
public class MemberInsertController extends SuperClass {

	private final String PREFIX = "member/" ;
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get member login");
		super.doGet(request, response);
		
		// meLoginForm.jsp 파일로 이동하면 됩니다.
		String gotopage = PREFIX + "meInsertForm.jsp" ;
		
		super.GotoPage(gotopage) ;
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doPost(request, response);

		String id = request.getParameter("id") ;
		String name = request.getParameter("name") ;
		String password = request.getParameter("password") ;
		String gender = request.getParameter("gender") ;
		
		String hobby = "" ; 
		String[] hobbies = request.getParameterValues("hobby") ;
		if(hobbies==null) {
			hobby = "" ;
		}else {
			for(int i = 0; i<hobbies.length;i++) {
				hobby += hobbies[i] + "," ;
			}
			hobby = hobby.substring(0,hobby.length()-1) ;
		}
		
		String hiredate = request.getParameter("hiredate") ;
		int mpoint = Integer.parseInt(request.getParameter("mpoint")) ;
		String remark = request.getParameter("remark") ;
		
		Member bean = new Member() ;
		
		bean.setId(id);
		bean.setName(name);
		bean.setPassword(password);
		bean.setGender(gender);
		bean.setHobby(hobby);
		bean.setHiredate(hiredate) ;
		bean.setMpoint(mpoint) ; 
		bean.setRemark(remark) ;
		
		MemberDao dao = new MemberDao() ;
		
		int cnt = -1 ; // 가정) -1은 가입 실패
		cnt = dao.InsertData(bean) ;
		
			if(cnt == -1) {
				
			}else {
				
			}
	}
}
