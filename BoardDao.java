package com.shopping.dao;

import com.shopping.model.Board;

public class BoardDao extends SuperDao{
	// 게시물 1건 
	public Board getDataByPk(int no) {
		return new Board(10, "hong", "자바 프로그램", "잼있어요", "2002/08/15", 1234, "비고란", 111, 222, 333);		
	} 
}
