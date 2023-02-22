package com.shopping.controller.member;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopping.controller.SuperClass;
import com.shopping.dao.MemberDao;
import com.shopping.model.Member;

public class MemberListController extends SuperClass {
	
		
	
	@Override  // 회원 목록을 조회홥니다.
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
		
		MemberDao dao = new MemberDao() ;
		List<Member> lists = null ;
		
			try {
				lists = dao.SelectAll() ;
				
				request.setAttribute("datalist", lists);
				
				String gotopage = "member/meList.jsp" ;
				super.GotoPage(gotopage);
				
			} catch (Exception e) {
				
				e.printStackTrace();
			}
		
		
	}
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		super.doPost(request, response);
	}

}
