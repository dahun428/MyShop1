package com.MyshoppingMall.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.MyshoppingMall.bbs.util.ConnUtil;
import com.MyshoppingMall.bbs.vo.Product;

public class ProductDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private static BbsFileDAO instance = new BbsFileDAO();
	public static BbsFileDAO getInstance() {
		return instance;
	}

	public void insertProduct(Product product) {

		String query = "insert into bbs_product (product_id, category, brand,product_name,"
				+ "price, discount_price, maker, point, detail) "
				+ "values (bbs_product_seq.nextval, ?, ?, ?, ?, ?, ?,?, detail) ";

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, product.getCategory());
			pstmt.setString(2, product.getBrand());
			pstmt.setString(3, product.getProductName());
			pstmt.setInt(4, product.getPrice());
			pstmt.setInt(5, product.getDiscountPrice());
			pstmt.setString(6, product.getMaker());
			pstmt.setInt(7, product.getPoint());
			pstmt.setString(8, product.getDetail());
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	public List<Product> getAllProduct() {
		
		List<Product> products = new ArrayList<Product>();
		
		String query = "select product_id, brand, product_name , category, price, discount_price," + 
				"stock, likes, point, maker, registered_date, product_detail,viewYn " + 
				"from bbs_product " + 
				"order by product_id asc";
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Product product = new Product();
				product.setNo(rs.getInt("product_id"));
				product.setBrand(rs.getString("brand"));
				product.setProductName(rs.getString("product_name"));
				product.setCategory(rs.getString("category"));
				product.setPrice(rs.getInt("price"));
				product.setDiscountPrice(rs.getInt("discount_price"));
				product.setStock(rs.getInt("stock"));
				product.setLikes(rs.getInt("likes"));
				product.setMaker(rs.getString("maker"));
				product.setRegisteredDate(rs.getDate("registered_date"));
				product.setDetail(rs.getString("product_detail"));
				product.setViewYn(rs.getString("viewYn"));
				products.add(product);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!= null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return products;
	}
}
