package com.shopping.dao;

import com.shopping.model.Member;

public class MemberDao extends SuperDao{
	// 회원 1사람의 정보를 반환해 줍니다.
	// 현재 일시적인 데이터이고, 차후 데이터 베이스에서 직접 읽어 오도록 하겠습니다. 
	public Member getDataByPk(String id) {
		return new Member("hong", "홍길동", "1234", "male", "농구,배구", "2002/06/24", 100, "비고란입니다.");
	} 
}
