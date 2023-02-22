package com.shopping.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.shopping.model.Member;

public class MemberDao extends SuperDao{
	// 회원 1사람의 정보를 반환해 줍니다.
	// 현재 일시적인 데이터이고, 차후 데이터 베이스에서 직접 읽어 오도록 하겠습니다. 
	public Member getDataByPk01(String id) {
		return new Member("hong", "홍길동", "1234", "male", "농구,배구", "2002/06/24", 100, "비고란입니다.");
	} 
	
	// 회원 목록 보기 기능) 회원 전체 목록을 반환해 줍니다
	public List<Member> getDataList(){
		List<Member> datalist = new ArrayList<Member>() ;
		
		datalist.add(new Member("hong", "홍길동", "1234", "male", "농구,배구", "2002/06/24", 100, "비고란입니다.")) ;
		
		datalist.add(new Member("park", "박영희", "1234", "male", "농구,배구", "2002/06/24", 100, "비고란입니다.")) ;
		
		datalist.add(new Member("choi", "최만위", "1234", "female", "농구,배구", "2002/06/24", 100, "비고란입니다.")) ;
		
		datalist.add(new Member("kim", "김동섭", "1234", "male", "농구,배구", "2002/06/24", 100, "비고란입니다.")) ;
		
		datalist.add(new Member("lee", "이수돌", "1234", "male", "농구,배구", "2002/06/24", 100, "비고란입니다.")) ;
		
		return datalist ;
		
	}

	public Member SelectData(String id, String password) throws Exception {
		System.out.println(id + "/" + password);
		// 아이디와 비번을 이용하여 로그인 가능한지 판단합니다.
		
		String sql = " select * from members" ;
		sql += " where id = ? and password = ?" ;
		
		// ?는 placeholder이라고 하며, 치환할 대상입니다.
		
		
		PreparedStatement pstmt = null ;
		ResultSet rs = null ;
		Connection conn = null ;
		
		if(conn==null) { conn = super.getConnection(); }
		
		pstmt = conn.prepareStatement(sql);
		
		// ? 치환은 반드시 실행 전에 해야 합니다.
		pstmt.setString(1, id) ;
		pstmt.setString(2, password) ;
		// pstmp.setInt(2, 0) ;  숫자열은 Int를 사용한다.
		
		rs = pstmt.executeQuery();
		
		Member bean = null ;

		if(rs.next()) {
			bean = this.makeBean(rs) ;
		}
	
		if(rs!=null) {rs.close();}
		if(pstmt!=null) {pstmt.close();}
		if(conn!=null) {conn.close();}
			
		return bean ;
	}
	
	/*
	 * public Member SelectData(String id, String password) {
	 * 
	 * // 아이디와 비번을 이용하여 로그인 가능한지 판단합니다.
	 * 
	 * // String imsiid = "hong" ; String imsiid = "admin" ; // 관리자로 들어갈려면 관리자로 들어가야
	 * 함 String imsipassword = "1234" ;
	 * 
	 * Member bean = null ;
	 * 
	 * if(id.equals(imsiid)) { if(password.equals(imsipassword)) { bean = new
	 * Member(id,"홍길동", password, null, null, null, 0, null) ; } }
	 * 
	 * return bean ; }
	 */

	public int InsertData(Member bean) {
		System.out.println(bean);
		
		
		// 회원에 대한 1건(bean 객체) 데이터를 데이터베이스에 추가합니다.
		int cnt = 1 ;
		
		return cnt;
	}

	public List<Member> SelectAll() throws Exception{
		// 전체 회원 목록을 리스트 컬렉션에 저장시키고 반환해 줍니다.
		
		String sql = " select * from members" ;
		
		List<Member> lists = new ArrayList<Member>() ;
		
		Connection conn = null ;
		PreparedStatement pstmt = null ; 
		ResultSet rs = null ;
		
		if(conn==null) {conn=super.getConnection();}
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery() ;
		
		while(rs.next()) {
			
			lists.add(this.makeBean(rs)) ;
		}
		
		if(rs!=null){rs.close();}
		if(pstmt!=null){pstmt.close();}
		if(conn!=null){conn.close();}
		
		return lists ;
	}

	// method 사용 이유는 반복적인 문구를 재사용하기 위해서
	
	private Member makeBean(ResultSet rs) throws Exception {
		Member bean = new Member() ;
		
		bean.setId(rs.getString("id"));
		bean.setName(rs.getString("name"));
		bean.setPassword(rs.getString("password"));
		bean.setGender(rs.getString("gender"));
		bean.setHobby(rs.getString("hobby"));
		bean.setHiredate(String.valueOf(rs.getDate("hiredate")));
		bean.setMpoint(rs.getInt("mpoint"));
		bean.setRemark(rs.getString("remark"));
		
		return bean ;
	}
	
	
}
