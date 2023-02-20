package com.shopping.dao;

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
	
	
}
