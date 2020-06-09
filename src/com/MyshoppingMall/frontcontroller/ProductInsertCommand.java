package com.MyshoppingMall.frontcontroller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MyshoppingMall.bbs.vo.Product;
import com.MyshoppingMall.command.Bcommand;
import com.MyshoppingMall.service.ProductService;

public class ProductInsertCommand implements Bcommand {

	ProductService productService = new ProductService();
	
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		
		String productName = request.getParameter("productName");
		String brand = request.getParameter("brand");
		String category = request.getParameter("category");
		String maker = request.getParameter("maker");
		int price = Integer.parseInt(request.getParameter("price"));
		int discountPrice = Integer.parseInt(request.getParameter("discountPrice"));
		int point = Integer.parseInt(request.getParameter("point"));
		
		Product product = new Product();
		product.setProductName(productName);
		product.setBrand(brand);
		product.setCategory(category);
		product.setMaker(maker);
		product.setPrice(price);
		product.setDiscountPrice(discountPrice);
		product.setPoint(point);
		
		productService.insertProduct(product);
		
	}

}
