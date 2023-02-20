package com.shopping.dao;

import java.util.ArrayList;
import java.util.List;

import com.shopping.model.Product;

public class ProductDao extends SuperDao{
	// 상품 1개
	public Product getDataByPk01(int num) {
		return new Product(20, "유아신발", "키즈패션", "신발이 넘 이쁘요.", 
				"child2.jpg", "child3.jpg", null, 10, 10000, 4, "비고란",
				"child", "2000/12/25");		
	} 
	
	public Product getDataByPk02(int num) {
		if(num == 10) {
			return new Product(10, "유아신발", "키즈패션", "신발이 넘 이쁘요.", 
					 "2.jpg","child2.jpg", null, 10, 10000, 4, "비고란",
						"child", "2000/12/25") ;
		}else {
			return new Product(20, "남성신발", "남성패션", "http://localhost:8888/ShoppingTest/example/bsProductList2.jsp.", 
					 "3.jpg","child3.jpg", null, 10, 20000, 4, "비고란",
					"child", "2000/12/25");
		}
	}
	
	public List<Product> getDataList(){
		List<Product> datalist = new ArrayList<Product>() ;
		
 		datalist.add(new Product(10, "유아신발", "키즈패션", "신발이 넘 이쁘요.", 
				 "2.jpg","child2.jpg", null, 10, 10000, 4, "비고란",
				"child", "2000/12/25"));
		
		datalist.add(new Product(20, "남성신발", "남성패션", "http://localhost:8888/ShoppingTest/example/bsProductList2.jsp.", 
				 "3.jpg","child3.jpg", null, 10, 20000, 4, "비고란",
				"child", "2000/12/25"));
		
		datalist.add(new Product(30, "여성신발", "여성패션", "nice.", 
				 "4.jpg","child4.jpg", null, 10, 30000, 4, "비고란",
				"child", "2000/12/25"));
		
		datalist.add(new Product(40, "유아신발", "키즈패션", "http://localhost:8888/ShoppingTest/example/bsProductList2.jsp.", 
				 "5.jpg","child5.jpg", null, 10, 10000, 4, "비고란",
				"child", "2000/12/25"));
		
		datalist.add(new Product(50, "유아신발", "키즈패션", "great.", 
				 "6.jpg","child6.jpg", null, 10, 20000, 4, "비고란",
				"child", "2000/12/25"));
		
		datalist.add(new Product(60, "유아신발", "키즈패션", "beautiful.", 
				 "2.jpg","onepiece1.gif", null, 10, 30000, 4, "비고란",
				"child", "2000/12/25"));
		
		return datalist ;
	}
}
