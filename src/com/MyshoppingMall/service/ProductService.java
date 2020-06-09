package com.MyshoppingMall.service;

import java.util.List;

import com.MyshoppingMall.bbs.checkFunction.ProductCheckFunction;
import com.MyshoppingMall.bbs.dao.ProductDAO;
import com.MyshoppingMall.bbs.vo.Product;

public class ProductService {

	ProductDAO productDao = new ProductDAO();
	
	public int insertProduct(Product product) {
		if(product == null) {
			return ProductCheckFunction.PRODUCT_INSERT_FAIL;
		}
		productDao.insertProduct(product);
		return ProductCheckFunction.PRODUCT_INSERT_SUCCESS;
	}
	public List<Product> getAllProduct(){
		return productDao.getAllProduct();
	}
	
}
