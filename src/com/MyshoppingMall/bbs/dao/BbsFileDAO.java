package com.MyshoppingMall.bbs.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.MyshoppingMall.bbs.checkFunction.BBSFileCheckFunction;
import com.MyshoppingMall.bbs.util.ConnUtil;
import com.MyshoppingMall.bbs.vo.BbsFile;

public class BbsFileDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	private static BbsFileDAO instance = new BbsFileDAO();
	public static BbsFileDAO getInstance() {
		return instance;
	}
	
	
	public int addBbsFile(BbsFile bbsFile) {

		String query = "INSERT INTO BBS_FILE (FILE_NAME, FILE_REAL_NAME) VALUES( ?, ?) ";

		try {
			conn = ConnUtil.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, bbsFile.getFileName());
			pstmt.setString(2, bbsFile.getFileRealName());
			pstmt.executeQuery();

			return BBSFileCheckFunction.BBS_FILE_UPLOAD_SUCCESS;
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

		return BBSFileCheckFunction.BBS_FILE_UPLOAD_FAIL;
	}


}
