package com.MyshoppingMall.frontcontroller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.checkFunction.ProductCheckFunction;
import com.MyshoppingMall.bbs.vo.Product;
import com.MyshoppingMall.command.Bcommand;
import com.MyshoppingMall.service.ProductService;

public class ProductMainCommand implements Bcommand {

	ProductService productService = new ProductService();
			
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {

		List<Product> products = productService.getAllProduct();
		if(products.isEmpty()) {
			request.setAttribute("isSuccess", ProductCheckFunction.DATABASE_ERROR);
		}
		request.setAttribute("products", products);
		request.setAttribute("isSuccess", ProductCheckFunction.PRODUCT_RETRIEVE_SUCCESS);
	}

}
