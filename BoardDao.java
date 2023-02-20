package com.shopping.dao;

import java.util.ArrayList;
import java.util.List;

import com.shopping.model.Board;

public class BoardDao extends SuperDao{
	// 게시물 1건 
	public Board getDataByPk01(int no) {
		return new Board(10, "hong", "자바 프로그램", "잼있어요", "2002/08/15", 1234, "비고란", 111, 222, 333);		
	} 
	
	public List<Board> getDataList(){
		List<Board> datalist = new ArrayList<Board>() ;
		
		datalist.add(new Board(10, "hong", "자바 프로그램", "잼있어요", "2003/08/15", 30, "비고란", 111, 222, 1));
					
		datalist.add(new Board(20, "park", "Data base", "잼없어요", "2004/08/15", 40, "비고란", 111, 222, 1));
		
		datalist.add(new Board(30, "choi", "eclipse", "잼있어요", "2005/08/15", 50, "비고란", 111, 222, 1));
		
		datalist.add(new Board(40, "kim", "oracle", "잼없어요", "2006/08/15", 60, "비고란", 111, 222, 2));
		
		datalist.add(new Board(50, "lee", "자바 프로그램", "잼있어요", "2007/08/15", 70, "비고란", 111, 222, 2));
		
		return datalist ;
		    
	}
}
