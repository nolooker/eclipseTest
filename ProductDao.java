package com.shopping.dao;

import com.shopping.model.Product;

public class ProductDao extends SuperDao{
	// 상품 1개
	public Product getDataByPk(int num) {
		return new Product(20, "유아신발", "키즈패션", "신발이 넘 이쁘요.", 
				"child2.jpg", "child3.jpg", null, 10, 10000, 4, "비고란",
				"child", "2000/12/25");		
	} 
}
