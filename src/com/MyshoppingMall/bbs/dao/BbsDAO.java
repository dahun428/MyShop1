package com.MyshoppingMall.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.MyshoppingMall.bbs.checkFunction.BBSCheckFunction;
import com.MyshoppingMall.bbs.util.ConnUtil;
import com.MyshoppingMall.bbs.util.QueryUtil;
import com.MyshoppingMall.bbs.vo.Bbs;
import com.MyshoppingMall.bbs.vo.BbsFile;
import com.MyshoppingMall.bbs.vo.User;

public class BbsDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private static BbsDAO instance = new BbsDAO();
	public static BbsDAO getInstance() {
		return instance;
	}
	public int updateBbsForFile(int bbsId, int fileNo) {
		String query = QueryUtil.getSQL("BBS.updateBbsForFile");

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, fileNo);
			pstmt.setInt(2, bbsId);
			pstmt.executeQuery();

			return BBSCheckFunction.BBS_WRITE_SUCCESS;
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

		return BBSCheckFunction.BBS_WRITE_FAIL;
	}
	public int updateBbs(Bbs bbs) {

		String query = QueryUtil.getSQL("BBS.updateBbs");

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bbs.getBbsTitle());
			pstmt.setString(2, bbs.getBbsContent());
			pstmt.setInt(3, bbs.getBbsAvailable());
			pstmt.setInt(4, bbs.getBbsId());
			pstmt.executeQuery();

			return BBSCheckFunction.BBS_WRITE_SUCCESS;
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

		return BBSCheckFunction.BBS_WRITE_FAIL;
	}


	public Bbs getBbsBybbsId(int bbsId) {
		String query = QueryUtil.getSQL("BBS.getBbsBybbsId");

		Bbs bbs = null;
		try {

			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bbsId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bbs = resultSetForm(rs);
			}
			return bbs;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return bbs;
	}

	public int addBbs(Bbs bbs) {

		String query = QueryUtil.getSQL("BBS.addBbs");
		try {

			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bbs.getBbsTitle());
			pstmt.setString(2, bbs.getUser().getUserId());
			pstmt.setString(3, bbs.getBbsContent());
			pstmt.executeQuery();

			return BBSCheckFunction.BBS_WRITE_SUCCESS;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return BBSCheckFunction.BBS_DATABASE_ERROR;
	}
	public List<Bbs> getListByTitle(int startRow, int size, String title){
		List<Bbs> lists = new ArrayList<Bbs>();
		String query = QueryUtil.getSQL("BBS.getListByTitle");
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, title);
			pstmt.setInt(2, size);
			pstmt.setInt(3, startRow);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				Bbs bbs = resultSetForm(rs);
				lists.add(bbs);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return lists;
	}
	public List<Bbs> getListByContent(int startRow, int size, String content){
		List<Bbs> lists = new ArrayList<Bbs>();
		String query = QueryUtil.getSQL("BBS.getListByContent=");
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, content);
			pstmt.setInt(2, size);
			pstmt.setInt(3, startRow);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				Bbs bbs = resultSetForm(rs);
				lists.add(bbs);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return lists;
	}
	public List<Bbs> getListByWriter(int startRow, int size, String writer){
		List<Bbs> lists = new ArrayList<Bbs>();
		String query = QueryUtil.getSQL("BBS.getListByWriter");
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, writer);
			pstmt.setInt(2, size);
			pstmt.setInt(3, startRow);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				Bbs bbs = resultSetForm(rs);
				lists.add(bbs);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return lists;
	}
	public List<Bbs> getAllList(int startRow, int size){


		List<Bbs> lists = new ArrayList<Bbs>();
		String query = QueryUtil.getSQL("BBS.getAllList");
		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, size);
			pstmt.setInt(2, startRow);
			rs = pstmt.executeQuery();

			while(rs.next()) {

				Bbs bbs = resultSetForm(rs);
				lists.add(bbs);
			}

		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}

		return lists;
	}
	public int selectCount() {

		String query = QueryUtil.getSQL("BBS.selectCount");

		try {

			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				return rs.getInt(1);
			}

			return BBSCheckFunction.BBS_NO_ARTICLE;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return BBSCheckFunction.BBS_DATABASE_ERROR;
	}
	public int selectCountForSeach(String attachment, String search) {

		String query = QueryUtil.getSQL("BBS.selectCountForSeach");
		StringBuffer bf = new StringBuffer(query); 

		if(attachment.equals("title")) {
			bf.append(QueryUtil.getSQL("BBS.selectCountForSeachByTitle"));
		} else if (attachment.equals("content")) {
			bf.append(QueryUtil.getSQL("BBS.selectCountForSeachByContent"));
		} else if (attachment.equals("writer")) {	
			bf.append(QueryUtil.getSQL("BBS.selectCountForSeachByWriter"));
		}

		try {

			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(bf.toString());
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				return rs.getInt(1);
			}

			return BBSCheckFunction.BBS_NO_ARTICLE;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();

			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return BBSCheckFunction.BBS_DATABASE_ERROR;
	}
	private Bbs resultSetForm(ResultSet rs) throws SQLException {

		Bbs bbs = new Bbs();
		bbs.setBbsNo(rs.getInt("NO"));
		bbs.setBbsId(rs.getInt("BBS_ID"));
		bbs.setBbsTitle(rs.getString("BBS_TITLE"));

		User user = new User();
		user.setUserId(rs.getString("USER_ID"));
		bbs.setUser(user);
			
		bbs.setBbsDate(rs.getString("bbs_date"));
		bbs.setBbsContent(rs.getString("BBS_CONTENT"));
		bbs.setBbsAvailable(rs.getInt("BBS_AVAILABLE"));


		return bbs;
	}

}
